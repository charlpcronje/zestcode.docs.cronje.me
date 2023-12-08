@echo off
set /p project_path="Enter the full path of your Laravel project: "

:: Create logs folder in the Laravel project if it doesn't exist
if not exist "%project_path%\\logs" mkdir "%project_path%\\logs"

:: Copy the Middleware and HTML template to the respective folders in the Laravel project
copy LogRunDetails.php "%project_path%\\app\\Http\\Middleware\\LogRunDetails.php"
copy html-template.html "%project_path%\\logs\\html-template.html"

:: Add Middleware to kernel.php file
echo Adding middleware to kernel.php...
echo protected $routeMiddleware = [ >> "%project_path%\\app\\Http\\Kernel.php"
echo     'log.run.details' => \App\Http\Middleware\LogRunDetails::class, >> "%project_path%\\app\\Http\\Kernel.php"
echo ]; >> "%project_path%\\app\\Http\\Kernel.php"

echo All done. Logging functionality has been added to your Laravel project.
