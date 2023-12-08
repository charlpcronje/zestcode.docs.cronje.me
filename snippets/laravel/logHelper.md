# Log Helper

Here is one way to implement a helper function to conditionally log messages based on an .env variable:

```php
function debug_log($type, $message) {
    if (env('DEBUG_TO_LOGS', false)) {
        Log::$type($message);
    }
}
```

Usage

```php
debug_log('info', 'This is an info message');
debug_log('warning', 'This is a warning message');
debug_log('error', 'This is an error message');
```

### The key points:
- Accepts log type and message as parameters
- Checks value of `DEBUG_TO_LOGS` `env` variable
- Default to false if env variable not set
- Uses Log facade to write log if enabled
To enable logging, set `DEBUG_TO_LOGS=1` in your .env file.
To disable, remove that line from `.env` or set to 0.
Let me know if you need any clarification or have additional questions
