# Documentation for LogRunDetails Middleware Class
**File Name**: `LogRunDetails.php`  
**Namespace**: `App\Http\Middleware`  
**Framework**: Laravel  

## Overview
The `LogRunDetails` middleware is used to log various types of information about the incoming HTTP request and its associated environment. It saves these details in text files and compiles them into an HTML log file. The middleware also maintains the last five log files by deleting older ones.

## Class Definition [PHP-1-CL-1]

### `class LogRunDetails`
Defines the middleware class named `LogRunDetails`.

```php
class LogRunDetails {
    // The class body goes here
}
```

---

## Middleware Handler Method [PHP-1-FN-1]

### `public function handle(Request $request, Closure $next)`
The primary method that serves as the middleware handler.

#### Parameters
- `$request` (Request): This is an instance of the Laravel `Request` class that represents the incoming HTTP request.
- `$next` (Closure): This is a Closure representing the next layer the request should pass to after this middleware.

#### Code Blocks [PHP-1-B-1]
```php
public function handle(Request $request, Closure $next) {
    // Code block here
}
```

#### Expression Level
- **`$this->checkAndCreateDirectory(base_path('logs'));`**: Calls the method `checkAndCreateDirectory` with the path to the logs directory. The `base_path` function gets the Laravel application's base path.
  
- **`$this->checkAndCreateDirectory(base_path('logs/currentRun'));`**: Similar to the previous expression, but specifies a sub-directory named `currentRun`.

---

### Nested `handle` Method
The nested `handle` method is likely a typo or a copy-paste error. Nested methods are not allowed in PHP, and this will result in a syntax error. The rest of the documentation will assume that this was unintended and focus on the methods within the original `handle` method.

---

### Helper Methods
These are methods designed to perform specific tasks within the middleware class.

---

#### `private function checkAndCreateDirectory($path)` [PHP-1-FN-2]

This method checks if a directory exists at the given path and creates it if not.

##### Parameters
- `$path` (String): This is the filesystem path where the directory should exist or be created.

##### Code Blocks [PHP-1-B-2]
```php
private function checkAndCreateDirectory($path) {
    // Code block here
}
```

##### Expression Level
- **`if (!File::exists($path))`**: Uses Laravel's `File` facade to check if a directory exists at the given path.
- **`File::makeDirectory($path, 0777, true);`**: Creates the directory with full permissions if it doesn't exist.

---

#### `private function logRoute($request)` [PHP-1-FN-3]

Logs the current route's action name.

##### Parameters
- `$request` (Request): This is the current HTTP request.

##### Code Blocks [PHP-1-B-3]
```php
private function logRoute($request) {
    // Code block here
}
```

##### Expression Level
- **`$routeDetails = $request->route() ? $request->route()->getActionName() : 'N/A';`**: Ternary operation to fetch the route details or set as 'N/A' if not available.
- **`file_put_contents(base_path('logs/currentRun/route.txt'), $routeDetails);`**: Saves the route details to a text file.

---

#### `private function logController($request)` [PHP-1-FN-4]

Logs the controller and method handling the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-4]
```php
private function logController($request) {
    // Code block here
}
```

##### Expression Level
- **`$controllerDetails = $request->route() ? $request->route()->getAction()['controller'] : 'N/A';`**: Retrieves the controller details or sets them as 'N/A'.
- **`list($controller, $action) = explode('@', $controllerDetails);`**: Splits the controller and action.
- **`file_put_contents(base_path('logs/currentRun/controller.txt'), "Controller: {$controller}\\nAction: {$action}");`**: Saves the controller and action details to a text file.

---

#### `private function logLivewireComponents($request)` [PHP-1-FN-5]

Logs the Livewire components that are included in the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-5]
```php
private function logLivewireComponents($request) {
    // Code block here
}
```

##### Expression Level
- **`$includedFiles = get_included_files();`**: Gets all included files in the PHP script.
- **`$livewireFiles = array_filter($includedFiles, function ($file) { return strpos($file, 'Livewire') !== false; });`**: Filters for Livewire files.
- **`file_put_contents(base_path('logs/currentRun/livewire_components.txt'), json_encode($livewireFiles));`**: Saves the Livewire files to a text file.

---

#### `private function logModels($request)` [PHP-1-FN-6]

Logs the model files that are included in the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-6]
```php
private function logModels($request) {
    // Code block here
}
```

##### Expression Level
- **`$

includedFiles = get_included_files();`**: Gets all included files in the PHP script.
- **`$modelFiles = array_filter($includedFiles, function ($file) { return strpos($file, 'Models') !== false; });`**: Filters for model files.
- **`file_put_contents(base_path('logs/currentRun/models.txt'), json_encode($modelFiles));`**: Saves the model files to a text file.

---

#### `private function logLayout($request)` [PHP-1-FN-7]

Logs the layout files that are included in the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-7]
```php
private function logLayout($request) {
    // Code block here
}
```

##### Expression Level
- **`$includedFiles = get_included_files();`**: Gets all included files in the PHP script.
- **`$layoutFiles = array_filter($includedFiles, function ($file) { return strpos($file, 'Layouts') !== false; });`**: Filters for layout files.
- **`file_put_contents(base_path('logs/currentRun/layout.txt'), json_encode($layoutFiles));`**: Saves the layout files to a text file.

---

#### `private function logView($request)` [PHP-1-FN-8]

Logs the view files that are included in the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-8]
```php
private function logView($request) {
    // Code block here
}
```

##### Expression Level
- **`$includedFiles = get_included_files();`**: Gets all included files in the PHP script.
- **`$viewFiles = array_filter($includedFiles, function ($file) { return strpos($file, 'Views') !== false; });`**: Filters for view files.
- **`file_put_contents(base_path('logs/currentRun/view.txt'), json_encode($viewFiles));`**: Saves the view files to a text file.

---

#### `private function logSqlQueries($request)` [PHP-1-FN-9]

Logs the SQL queries that are executed in the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-9]
```php
private function logSqlQueries($request) {
    // Code block here
}
```

##### Expression Level
- **`$queries = \DB::getQueryLog();`**: Gets the query log from Laravel's database manager.
- **`file_put_contents(base_path('logs/currentRun/sql_queries.txt'), json_encode($queries));`**: Saves the SQL queries to a text file.

---

#### `private function logHeaders($request)` [PHP-1-FN-10]

Logs the HTTP headers received in the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-10]
```php
private function logHeaders($request) {
    // Code block here
}
```

##### Expression Level
- **`$headers = json_encode($request->headers->all());`**: Encodes the headers into a JSON string.
- **`file_put_contents(base_path('logs/currentRun/headers_received.txt'), $headers);`**: Saves the HTTP headers to a text file.

---

#### `private function logCookies($request)` [PHP-1-FN-11]

Logs the cookies received in the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-11]
```php
private function logCookies($request) {
    // Code block here
}
```

##### Expression Level
- **`$cookies = json_encode($request->cookies->all());`**: Encodes the cookies into a JSON string.
- **`file_put_contents(base_path('logs/currentRun/cookies.txt'), $cookies);`**: Saves the cookies to a text file.

---

#### `private function logSession($request)` [PHP-1-FN-12]

Logs the session data for the current request.

##### Parameters
- `$request` (Request): The current HTTP request.

##### Code Blocks [PHP-1-B-12]
```php
private function logSession($request) {
    // Code block here
}
```

##### Expression Level
- **`$sessionContent = json_encode($request->session()->all());`**: Encodes the session data into a JSON string.
- **`file_put_contents(base_path('logs/currentRun/session_content.txt'), $sessionContent);`**: Saves the session data to a text file.

---

#### `private function compileToHtml()` [PHP-1-FN-13]

Compiles the logged details into an HTML file.

##### Code Blocks [PHP-1-B-13]
```php
private function compileToHtml() {
    // Code block here
}
```

##### Expression Level
- **`$templatePath = base_path('logs/html-template.html');`**: Defines the path to the HTML template.
- **`$html = file_get_contents($templatePath);`**: Reads the HTML template into a string.
- **`$placeholders = [...];`**: Defines the placeholders and their corresponding file paths.
- **`foreach ($placeholders as $placeholder => $filePath) {...}`**: Replaces placeholders in the HTML template with actual log content.
- **`$runNumber = time();`**: Gets the current Unix timestamp to use as a unique identifier for the log file.
- **`$newLogPath = base_path("logs/run-{$runNumber}.html");`**: Defines the new log file path.
- **`file_put_contents($newLogPath, $html);`**: Saves the populated HTML to a new log file.

---

#### `private function maintainLogFiles()` [PHP-1-FN-14]

Maintains only the last 5 log files by deleting older

 ones.

##### Code Blocks [PHP-1-B-14]
```php
private function maintainLogFiles() {
    // Code block here
}
```

##### Expression Level
- **`$logFiles = glob(base_path('logs/run-*.html'));`**: Gets an array of all log files.
- **`usort($logFiles, function($a, $b) {...});`**: Sorts the log files by their modification time.
- **`while (count($logFiles) > 5) {...}`**: Deletes older log files until only the last 5 remain.

---

#### `private function logRun($message)` [PHP-1-FN-15]

Logs a runtime message to a log file.

##### Parameters
- `$message` (String): The message to log.

##### Code Blocks [PHP-1-B-15]
```php
private function logRun($message) {
    // Code block here
}
```

##### Expression Level
- **`$logMessage = '[' . now() . '] ' . $message . PHP_EOL;`**: Formats the log message with the current time.
- **`File::append(base_path('logs/runLog.log'), $logMessage);`**: Appends the log message to the `runLog.log` file.

---

## References

- `base_path`: [Laravel Documentation](https://laravel.com/docs/8.x/helpers#method-base-path)
- `Request`: [Laravel Documentation](https://laravel.com/docs/8.x/requests)
- `Closure`: [PHP Documentation](https://www.php.net/manual/en/class.closure.php)
- `File`: [Laravel Documentation](https://laravel.com/docs/8.x/filesystem)