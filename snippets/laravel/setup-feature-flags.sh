#!/bin/bash

# inDEVotion
# File: setup-feature-flags-full.sh

# Common Directory Variables
MODEL_DIR="app/Models"
MIGRATION_DIR="database/migrations"
MIDDLEWARE_DIR="app/Http/Middleware"
CONTROLLER_DIR="app/Http/Controllers/Admin"
VIEW_DIR="resources/views/admin/flags"
ROUTE_FILE="routes/web.php"
KERNEL_FILE="app/Http/Kernel.php"
COMPOSER_FILE="composer.json"

# Create directories if not exist
mkdir -p $CONTROLLER_DIR
mkdir -p $VIEW_DIR

# Create Migration
echo "Creating migration..."
MIGRATION_FILE="$MIGRATION_DIR/$(date +%Y_%m_%d_%H%M%S)_create_feature_flags_table.php"
cat <<EOL > $MIGRATION_FILE
<?php
class CreateFeatureFlagsTable extends \Illuminate\Database\Migrations\Migration {
    public function up() {
        \Illuminate\Support\Facades\Schema::create('feature_flags', function (\Illuminate\Database\Schema\Blueprint \$table) {
            \$table->id();
            \$table->string('feature');
            \$table->boolean('is_active');
            \$table->string('description')->nullable();
            \$table->string('status')->default('Enabled');
            \$table->timestamps();
        });
    }

    public function down() {
        \Illuminate\Support\Facades\Schema::dropIfExists('feature_flags');
    }
}
EOL

# Create Model
echo "Creating model..."
MODEL_FILE="$MODEL_DIR/FeatureFlag.php"
cat <<EOL > $MODEL_FILE
<?php
namespace App\Models;

class FeatureFlag extends \Illuminate\Database\Eloquent\Model {
    protected \$fillable = ['feature', 'is_active', 'description', 'status'];
}
EOL

# Create Helper Functions
echo "Creating helper functions..."
HELPER_FILE="app/helpers.php"
cat <<EOL > $HELPER_FILE
<?php
function isFeatureActive(\$feature) {
    return \Illuminate\Support\Facades\Cache::remember("feature_flags.{\$feature}", 60, function () use (\$feature) {
        \$featureFlag = \App\Models\FeatureFlag::where('feature', \$feature)->first();
        return \$featureFlag ? \$featureFlag->is_active : false;
    });
}

function getFeatureStatus(\$feature) {
    return \Illuminate\Support\Facades\Cache::remember("feature_flags.{\$feature}.status", 60, function () use (\$feature) {
        \$featureFlag = \App\Models\FeatureFlag::where('feature', \$feature)->first();
        return \$featureFlag ? \$featureFlag->status : 'Unknown';
    });
}

function isFeatureStatus(\$feature, \$status) {
    if (isFeatureActive(\$feature)) {
        return getFeatureStatus(\$feature) === \$status;
    }
    return false;
}
EOL

# Create Middleware
echo "Creating middleware..."
MIDDLEWARE_FILE="$MIDDLEWARE_DIR/FeatureFlagMiddleware.php"
cat <<EOL > $MIDDLEWARE_FILE
<?php
class FeatureFlagMiddleware {
    public function handle(\$request, \Closure \$next, \$feature) {
        if (!isFeatureActive(\$feature)) {
            abort(403, 'Feature not enabled');
        }
        return \$next(\$request);
    }
}
EOL

# Create Controller
echo "Creating FeatureFlagController..."
CONTROLLER_FILE="$CONTROLLER_DIR/FeatureFlagController.php"
cat <<EOL > $CONTROLLER_FILE
<?php
namespace App\Http\Controllers\Admin;

use App\Models\FeatureFlag;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FeatureFlagController extends Controller {
    public function index() {
        \$flags = FeatureFlag::all();
        return view('admin.flags.index', compact('flags'));
    }

    public function update(Request \$request, \$id) {
        \$flag = FeatureFlag::findOrFail(\$id);
        \$flag->is_active = \$request->is_active;
        \$flag->status = \$request->status;
        \$flag->description = \$request->description;
        \$flag->save();
        return redirect()->back();
    }
}
EOL

# Create Blade View
echo "Creating Blade View..."
VIEW_FILE="$VIEW_DIR/index.blade.php"
cat <<EOL > $VIEW_FILE
@extends('admin.layouts.app')
@section('content')
    <table>
        <thead>
            <tr>
                <th>Feature</th>
                <th>Status</th>
                <th>Is Active</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach(\$flags as \$flag)
                <tr>
                    <td>{{ \$flag->feature }}</td>
                    <td>{{ \$flag->status }}</td>
                    <td>{{ \$flag->is_active ? 'Yes' : 'No' }}</td>
                    <td>
                        <form action="{{ route('admin.flags.update', \$flag->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <input type="checkbox" name="is_active" value="1" {{ \$flag->is_active ? 'checked' : '' }}>
                            <select name="status">
                                <option value="Enabled">Enabled</option>
                                <option value="Disabled">Disabled</option>
                                <!-- Other status options here -->
                            </select>
                            <input type="text" name="description" placeholder="Description" value="{{ \$flag->description }}">
                            <button type="submit">Update</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
EOL

# Update Routes
echo "Updating Routes..."
echo "
use App\Http\Controllers\Admin\FeatureFlagController;

Route::get('/admin/flags', [FeatureFlagController::class, 'index'])->name('admin.flags.index');
Route::put('/admin/flags/{id}', [FeatureFlagController::class, 'update'])->name('admin.flags.update');

" >> $ROUTE_FILE

# Update Middleware in Kernel.php
echo "Updating Middleware..."
sed -i "/protected \$routeMiddleware = \[/a \ \ \ \ 'feature-flag' => \App\Http\Middleware\FeatureFlagMiddleware::class," $KERNEL_FILE

# Update Composer
echo "Updating $COMPOSER_FILE for autoloading helper..."
sed -i '/"autoload": {/a \ \ \ \ "files": ["app/helpers.php"],' $COMPOSER_FILE

# Run Artisan Migrate
echo "Running PHP artisan migrate..."
php artisan migrate

echo "Full setup complete. Make sure the updates to the following files are correct:"
echo "  - $MIGRATION_FILE"
echo "  - $MODEL_FILE"
echo "  - $HELPER_FILE"
echo "  - $MIDDLEWARE_FILE"
echo "  - $CONTROLLER_FILE"
echo "  - $VIEW_FILE"
echo "  - $ROUTE_FILE"
echo "  - $KERNEL_FILE"
echo "  - $COMPOSER_FILE"

