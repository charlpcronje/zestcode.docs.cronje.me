# Setup Feature Flag

To implement feature flags, you need to copy this one [setup-feature-flags.sh](./setup-feature-flags.sh) file to the root of your project and execute it

```sh
chmod +x ./setup-feature-flags.sh

./setup-feature-flags.sh
```


1. **Create Directories**:  
    Creates the necessary directories if they don't already exist.
    
2. **Create Migration**:  
    Generates a migration file for creating the `feature_flags` table. The table has fields like `feature`, `is_active`, `description`, and `status`.
    
3. **Create Model**:  
    Creates an Eloquent model `FeatureFlag` that corresponds to the `feature_flags` table.
    
4. **Create Helper Functions**:  
    Defines three helper functions:
    - `isFeatureActive($feature)`: Checks if a feature is active.
    - `getFeatureStatus($feature)`: Gets the status of a feature.
    - `isFeatureStatus($feature, $status)`: Checks if a feature has a specific status.
5. **Create Middleware**:  
    Creates a middleware that checks if a feature is active. If not, it returns a 403 error.
    
6. **Create Controller**:  
    Sets up a `FeatureFlagController` that includes methods for displaying all feature flags and updating a specific feature flag.
    
7. **Create Blade View**:  
    Sets up a Blade template to display the feature flags and provide a form to update them.
    
8. **Update Routes**:  
    Adds routes for feature flag management to the existing Laravel routes file.
    
9. **Update Middleware in Kernel.php**:  
    Adds the newly created middleware to the Laravel Kernel file.
    
10. **Update Composer**:  
    Adds the helper file to Composer's autoload section.
    
11. **Run Artisan Migrate**:  
    Executes `php artisan migrate` to create the `feature_flags` table.
    
12. **Final Message**:  
    Outputs a summary of all the files that have been modified or created.

To conditionally exclude a piece of code using feature flags in Laravel, you can utilize the helper function isFeatureActive that you've already created. You'll surround the code you want to conditionally include or exclude with an if statement that calls this function.

```php
// LV-5
// SomeController.php in app/Http/Controllers

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SomeController extends Controller
{
    // LV-5-FN-1
    public function someMethod()
    {
        // ... some code

        if (isFeatureActive('your_feature_flag')) {
            // This block of code will only run if 'your_feature_flag' is active.
        }

        // ... some more code
    }
}
```

You can also use this approach to exclude code by using `!isFeatureActive('your_feature_flag'):`

```php
if (!isFeatureActive('your_feature_flag')) {
    // This block of code will only run if 'your_feature_flag' is NOT active.
}
```

In a Blade template, you can make use of Laravel's @if, @else, and @endif directives along with your isFeatureActive helper function to conditionally include or exclude pieces of HTML or other Blade code.


```blade
<!-- LV-6 -->
<!-- some_template.blade.php in resources/views -->

{{-- Some HTML or Blade code --}}

@if(isFeatureActive('your_feature_flag'))
    {{-- This block will only be rendered if 'your_feature_flag' is active --}}
    <div>
        <!-- Your HTML for the active feature -->
    </div>
@endif

{{-- Some more HTML or Blade code --}}
```

To exclude a piece of code when the feature flag is not active, you can use the @else directive, or simply negate the condition like so:

```blade
@if(!isFeatureActive('your_feature_flag'))
    {{-- This block will only be rendered if 'your_feature_flag' is NOT active --}}
    <div>
        <!-- Your HTML for the inactive feature -->
    </div>
@endif
```
This way, you can easily toggle features on and off in your Blade templates based on the status of your feature flags.

This allows you to enable or disable certain features dynamically without changing the codebase, by simply updating the status of the feature flag in the database.

## To uninstall the Feature flags

To uninstall feature flags, you need to copy this one [remove-feature-flags.sh](./remove-feature-flags.sh) file to the root of your project and execute it

```sh
chmod +x ./remove-feature-flags.sh

./remove-feature-flags.sh
```

This script will do the following:

1. **Identify and Rollback Migration**:  
    Searches for the migration file for the `feature_flags` table and offers to roll it back. If confirmed, it executes `php artisan migrate:rollback` for that specific migration.
    
2. **Remove Model**:  
    Deletes the `FeatureFlag` Eloquent model if it exists.
    
3. **Remove Middleware**:  
    Deletes the `FeatureFlagMiddleware` file if it exists.
    
4. **Remove Controller**:  
    Deletes the `FeatureFlagController` if it exists.
    
5. **Remove View**:  
    Deletes the entire view directory for feature flags if it exists.
    
6. **Remove Helper Functions**:  
    Deletes the helper functions file if it exists.
    
7. **Delete Related Routes**:  
    Uses `sed` to remove routes related to feature flags from `web.php`.
    
8. **Delete Middleware Registration**:  
    Uses `sed` to remove the middleware registration from `Kernel.php`.
    
9. **Remove Helper from Composer**:  
    Uses `sed` to remove the helper file from Composer's autoload section.
    
10. **Final Message**:  
    Outputs a message indicating that the removal is complete and advises manual verification.