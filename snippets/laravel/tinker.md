# Custom Laravel Tinker

### This Tinker upgrade has the following function

- Added `exit` command. To use this in Tinerker


```php
#!/usr/bin/env php
<?php

require __DIR__.'/vendor/autoload.php';

use Illuminate\Contracts\Console\Kernel;

$app = require_once __DIR__.'/bootstrap/app.php';

$kernel = $app->make(Kernel::class);

$kernel->bootstrap();
    
\Illuminate\Support\Facades\Artisan::call('tinker');

// Add ability to exit tinker with "exit" command
\Psy\Shell::registerCommand('exit', function() {
    return $this->quit();
});

// Add helper to quickly open any class
\Psy\Shell::registerCommand('open', function($class) {
    $refl = new \ReflectionClass($class);
    $this->addInput('dump($refl->getFileName());');
    return $this->openFile($refl->getFileName());
});

// Add helper to quickly show current route list
\Psy\Shell::registerCommand('routes', function() {
    return \Illuminate\Support\Facades\Route::getRoutes();
});

// Open the REPL
\Psy\Shell::run();
```