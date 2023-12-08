#!/bin/bash

# Shell script to add logging functionality to a Laravel project

# Ask for the full path of the Laravel project
read -p "Enter the full path of your Laravel project: " project_path

# Create logs folder in the Laravel project if it doesn't exist
if [ ! -d "$project_path/logs" ]; then
  mkdir -p "$project_path/logs"
fi

# Copy the Middleware and HTML template to the respective folders in the Laravel project
cp ./LogRunDetails.php "$project_path/app/Http/Middleware/LogRunDetails.php"
cp ./html-template.html "$project_path/logs/html-template.html"

# Add the Middleware to the kernel.php file
echo "Adding middleware to kernel.php..."
sed -i "/protected \\\$routeMiddleware = \[/a \ \ \ \ 'log.run.details' => \\App\\Http\\Middleware\\LogRunDetails::class," "$project_path/app/Http/Kernel.php"

echo "All done. Logging functionality has been added to your Laravel project."