# Dispatch Job Manually

### 1. Using Artisan Command

You can create a new artisan command that dispatches the job. Laravel's artisan command-line tool provides a simple way to create custom commands. To create a new command, you can use the make:command artisan command.

```sh
php artisan make:command DispatchSuperAdminDailyMetrics
```

This will create a new command class in the `app/Console/Commands` directory. In the handle method of the command, you can dispatch the job.

```php
<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Jobs\SuperAdminDailyMetrics;

class DispatchSuperAdminDailyMetrics extends Command
{
    protected $signature = 'dispatch:superadmin-daily-metrics';

    protected $description = 'Dispatch the SuperAdminDailyMetrics job';

    public function handle()
    {
        SuperAdminDailyMetrics::dispatch();

        $this->info('Job dispatched');
    }
}
```

Then, you can run the command using artisan:

```sh
php artisan dispatch:superadmin-daily-metrics
```

This will dispatch the job, which will be handled by the queue worker if you are using a queue system, or synchronously if you are not using queues

### 2. Using Tinker

Laravel's Tinker is a REPL (Read-Eval-Print Loop) that allows you to interact with your application's code and data directly from the command line

You can use Tinker to dispatch the job directly. To start a Tinker session, run:

```sh
php artisan tinker
```
Then, in the Tinker session, you can dispatch the job:

```php
\App\Jobs\SuperAdminDailyMetrics::dispatch()
```

This will dispatch the job, which will be handled by the queue worker if you are using a queue system, or synchronously if you are not using queues

Please note that if you are using queues, you need to ensure that your queue worker is running. You can start a queue worker using the `queue:work` artisan command:

```sh
php artisan queue:work
```

This will start a queue worker that will listen for new jobs and process them as they are pushed onto the queue
