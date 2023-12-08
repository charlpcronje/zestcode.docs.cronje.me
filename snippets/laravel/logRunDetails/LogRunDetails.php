<?php
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