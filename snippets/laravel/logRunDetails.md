# Log run Details

This is a middleware and self installer for logging the execution in the Laravel, it logs the following to an html template

- Session
- Cookies
- Headers
- SqlQueries
- View
- Layout
- Models
- Livewire Components
- Controller
- Route

Download the [ZIP Archive](./logRunDetails/logRunDetails.zip), then execute the `runLogDetails.sh` file by first making it executable and then running it. The rest will be asked by the installed. The log will be available in your project `./logs` folder and if for some reason the execution failed you can look i the `./logs/currentRun` folder to the individual log files for each function. These are what is combined unto the template after each run

Below is the code used for the logging of all the features, I decided to use very simple methods of getting the data by using the array PHP keeps of all the files being included and then filtering them on some keyword

For detailed docs on the code below can be found here [./logRunDetails/documentation.md](./logRunDetails/documentation.md)

I wrapped all the functions of the middleware in a try catch block to make sure the middleware is not responsible for the system breaking

```sh
chmod +x runLogDetails.sh && ./runLogDetails.sh
```

## 1. Create new Middleware

```sh
php artisan make:middleware LogRunDetails
```

## 2. Middleware functions

```php
// LogRunDetails.php
// app/Http/Middleware

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class LogRunDetails
{
    public function handle(Request $request, Closure $next)
    {
        // Check and create logs directory if it doesn't exist
        $this->checkAndCreateDirectory(base_path('logs'));
        $this->checkAndCreateDirectory(base_path('logs/currentRun'));
        
         try {
            // Log various details
            $this->logRoute($request);
            $this->logController($request);
            $this->logLivewireComponents($request);
            $this->logModels($request);
            $this->logLayout($request);
            $this->logView($request);
            $this->logSqlQueries($request);
            $this->logHeaders($request);
            $this->logCookies($request);
            $this->logSession($request);
        
            $response = $next($request);
            
            // Compile details to HTML and save
            $this->compileToHtml();
                
            // Maintain only the last 5 log files
            $this->maintainLogFiles();
            
            return $response;
        } catch (Exception $e) {
            // Log the exception
            $this->logRun("Exception caught: " . $e->getMessage());
            return $next($request);
        }
    }
    
    private function checkAndCreateDirectory($path)
    {
        if (!File::exists($path)) {
            File::makeDirectory($path, 0777, true);
        }
    }
    
    private function logRoute($request)
    {
        $routeDetails = $request->route() ? $request->route()->getActionName() : 'N/A';
        file_put_contents(base_path('logs/currentRun/route.txt'), $routeDetails);
    }
    
    private function logController($request)
    {
        $controllerDetails = $request->route() ? $request->route()->getAction()['controller'] : 'N/A';
        list($controller, $action) = explode('@', $controllerDetails);
        file_put_contents(base_path('logs/currentRun/controller.txt'), "Controller: {$controller}\\nAction: {$action}");
    }

    // PHP-1-FN-7
    private function logLivewireComponents($request)
    {
        $includedFiles = get_included_files();
        $livewireFiles = array_filter($includedFiles, function ($file) {
            return strpos($file, 'Livewire') !== false;
        });
        file_put_contents(base_path('logs/currentRun/livewire_components.txt'), json_encode($livewireFiles));
    }

    // PHP-1-FN-8
    private function logModels($request)
    {
        $includedFiles = get_included_files();
        $modelFiles = array_filter($includedFiles, function ($file) {
            return strpos($file, 'Models') !== false;
        });
        file_put_contents(base_path('logs/currentRun/models.txt'), json_encode($modelFiles));
    }

    // PHP-1-FN-9
    private function logLayout($request)
    {
        $includedFiles = get_included_files();
        $layoutFiles = array_filter($includedFiles, function ($file) {
            return strpos($file, 'Layouts') !== false;
        });
        file_put_contents(base_path('logs/currentRun/layout.txt'), json_encode($layoutFiles));
    }

    // PHP-1-FN-10
    private function logView($request)
    {
        $includedFiles = get_included_files();
        $viewFiles = array_filter($includedFiles, function ($file) {
            return strpos($file, 'Views') !== false;
        });
        file_put_contents(base_path('logs/currentRun/view.txt'), json_encode($viewFiles));
    }


    // PHP-1-FN-11
    private function logSqlQueries($request)
    {
        // Collect executed SQL queries
        $queries = \DB::getQueryLog();
        file_put_contents(base_path('logs/currentRun/sql_queries.txt'), json_encode($queries));
    }

    // PHP-1-FN-12
    private function logHeaders($request)
    {
        $headers = json_encode($request->headers->all());
        file_put_contents(base_path('logs/currentRun/headers_received.txt'), $headers);
    }

    // PHP-1-FN-13
    private function logCookies($request)
    {
        $cookies = json_encode($request->cookies->all());
        file_put_contents(base_path('logs/currentRun/cookies.txt'), $cookies);
    }

    // PHP-1-FN-14
    private function logSession($request)
    {
        $sessionContent = json_encode($request->session()->all());
        file_put_contents(base_path('logs/currentRun/session_content.txt'), $sessionContent);
    }
    
    // PHP-1-FN-5
    private function compileToHtml()
    {
        // Read the HTML template
        $templatePath = base_path('logs/html-template.html');
        $html = file_get_contents($templatePath);

        // Define the log files and their corresponding placeholders in the template
        $placeholders = [
            'ROUTE_DETAILS' => base_path('logs/currentRun/route.txt'),
            'CONTROLLER_DETAILS' => base_path('logs/currentRun/controller.txt'),
            'LIVEWIRE_COMPONENTS_DETAILS' => base_path('logs/currentRun/livewire_components.txt'),
            'MODELS_DETAILS' => base_path('logs/currentRun/models.txt'),
            'LAYOUT_DETAILS' => base_path('logs/currentRun/layout.txt'),
            'VIEW_DETAILS' => base_path('logs/currentRun/view.txt'),
            'SQL_QUERIES_DETAILS' => base_path('logs/currentRun/sql_queries.txt'),
            'HEADERS_RECEIVED_DETAILS' => base_path('logs/currentRun/headers_received.txt'),
            'COOKIES_DETAILS' => base_path('logs/currentRun/cookies.txt'),
            'SESSION_CONTENT_DETAILS' => base_path('logs/currentRun/session_content.txt')
        ];

        // Replace placeholders in the HTML template with actual log content
        foreach ($placeholders as $placeholder => $filePath) {
            if (file_exists($filePath)) {
                $content = file_get_contents($filePath);
                $html = str_replace("<!--{$placeholder}-->", htmlspecialchars($content), $html);
            }
        }

        // Save the populated HTML to a new log file
        $runNumber = time();
        $newLogPath = base_path("logs/run-{$runNumber}.html");
        file_put_contents($newLogPath, $html);
    }

    
    // PHP-1-FN-6
    private function maintainLogFiles()
    {
        $logFiles = glob(base_path('logs/run-*.html'));
        usort($logFiles, function($a, $b) {
            return filemtime($a) < filemtime($b);
        });

        while (count($logFiles) > 5) {
            $fileToDelete = array_pop($logFiles);
            unlink($fileToDelete);
        }
    }

    private function logRun($message)
    {
        $logMessage = '[' . now() . '] ' . $message . PHP_EOL;
        File::append(base_path('logs/runLog.log'), $logMessage);
    }
}
```

3. HTML Template

You can find the html template for the output here: [./logRunDetails/html-template.html](./logRunDetails/html-template.html)

4. Install Script

**Filename**: logRunDetails.sh

```sh
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
```


