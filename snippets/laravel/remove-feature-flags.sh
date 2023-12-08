#!/bin/bash

# inDEVotion
# File: remove-feature-flags-full.sh

# Common Directory Variables
MODEL_DIR="app/Models/FeatureFlag.php"
MIGRATION_PATTERN="*_create_feature_flags_table.php"
MIGRATION_DIR="database/migrations/"
MIDDLEWARE_DIR="app/Http/Middleware/FeatureFlagMiddleware.php"
CONTROLLER_DIR="app/Http/Controllers/Admin/FeatureFlagController.php"
VIEW_DIR="resources/views/admin/flags"
HELPER_FILE="app/helpers.php"
ROUTE_FILE="routes/web.php"
KERNEL_FILE="app/Http/Kernel.php"
COMPOSER_FILE="composer.json"

# Identify and rollback the specific migration
MIGRATION_FILE=""
for filename in $MIGRATION_DIR*; do
  if [[ $filename == *"_create_feature_flags_table.php" ]]; then
    MIGRATION_FILE=$(basename $filename)
    break
  fi
done

if [ ! -z "$MIGRATION_FILE" ]; then
    echo "Found migration file $MIGRATION_FILE."
    read -p "Do you want to roll it back? [y/N]: " rollback_choice
    if [ "$rollback_choice" = "y" ] || [ "$rollback_choice" = "Y" ]; then
        echo "Rolling back migration $MIGRATION_FILE..."
        php artisan migrate:rollback --path=database/migrations/$MIGRATION_FILE
    fi

    # Confirm the file still exists
    if [ -f "database/migrations/$MIGRATION_FILE" ]; then
        # Confirm removal of Migration
        read -p "Do you want to remove the migration file? [y/N]: " remove_choice
        if [ "$remove_choice" = "y" ] || [ "$remove_choice" = "Y" ]; then
            echo "Removing migration..."
            rm "database/migrations/$MIGRATION_FILE"
        fi
    else
        echo "Migration file not found after rollback. Skipping removal."
    fi
else
    echo "No matching migration file found. Skipping rollback and removal."
fi



# Remove Model
[ -f $MODEL_DIR ] && echo "Removing model..." && rm $MODEL_DIR

# Remove Middleware
[ -f $MIDDLEWARE_DIR ] && echo "Removing middleware..." && rm $MIDDLEWARE_DIR

# Remove Controller
[ -f $CONTROLLER_DIR ] && echo "Removing controller..." && rm $CONTROLLER_DIR

# Remove View
[ -d $VIEW_DIR ] && echo "Removing view directory..." && rm -rf $VIEW_DIR

# Remove Helper Functions
[ -f $HELPER_FILE ] && echo "Removing helper functions..." && rm $HELPER_FILE

# Delete related routes in web.php
sed -i '/FeatureFlagController::class, '\''index'\''/d' $ROUTE_FILE
sed -i '/FeatureFlagController::class, '\''update'\''/d' $ROUTE_FILE

# Delete middleware registration in Kernel.php
sed -i '/feature-flag'\''=> \\App\\Http\\Middleware\\FeatureFlagMiddleware::class,/d' $KERNEL_FILE

# Remove Helper from Composer
sed -i '/"files": \["app\/helpers.php"\],/d' $COMPOSER_FILE

echo "Removal complete. Please manually verify that all elements have been removed as expected."
