# Create Notification

Here's a step-by-step guide to achieve this:

### 1. Create a new Notification class

Laravel provides an artisan command to create a new notification class:

```sh
   php artisan make:notification SuperAdminMoreDataNotification
```

This command will create a new notification class at `App\Notifications\SuperAdminMoreDataNotification`. This class will be used to build the notification sent to the super admins [Source 13](https://laravel.com/docs/10.x/notifications).

### Create the notification content

In the `SuperAdminMoreDataNotification` class, you will find a `toMail` method. This method receives a $notifiable entity and should return a `MailMessage` instance. This `MailMessage` instance is what builds the email message. Here is an example of how to implement it:

```php
   public function toMail($notifiable)
   {
       return (new MailMessage)
               ->subject('Daily Report')
               ->line('Here is the daily report.')
               ->line('Number of Practice Sign-ups: '.$this->data['practice_sign_ups'])
               ->line('Number of Shifts Added: '.$this->data['shifts_added'])
               ->line('Number of Applications: '.$this->data['applications'])
               ->line('Number of Locums Registered: '.$this->data['locums_registered'])
               ->line('Thank you for using our application!');
   }
```

In this example, `data` is an array that contains the data we want to send in the email. We will populate this data in our scheduled job [Source 13](https://laravel.com/docs/10.x/notifications).

### 3. Create a new Job class

The artisan command to create a new job class is:

```bash
   php artisan make:job SendSuperAdminMoreDataNotification
```

This command will create a new job class at `App\Jobs\SendSuperAdminMoreDataNotification`. This job will be responsible for querying the database, collating the data, and sending the notification [Source 12](https://dev.to/kingsconsult/schedule-a-task-to-run-at-a-specific-time-in-laravel-cronjob-5aaf).

### 4. Create the Job logic

In the `SendSuperAdminMoreDataNotification` class, you will find a `handle` method. This is where the job's logic should be implemented. Here is an example of how to implement it:

```php
   public function handle()
   {
       $practice_sign_ups = Practice::whereDate('created_at', today()->subDay())->count();
       $shifts_added = Vacancy::whereDate('created_at', today()->subDay())->count();
       $applications = UserVacancy::whereDate('created_at', today()->subDay())->count();
       $locums_registered = User::role('consultant')->whereDate('created_at', today()->subDay())->count();

       $data = [
           'practice_sign_ups' => $practice_sign_ups,
           'shifts_added' => $shifts_added,
           'applications' => $applications,
           'locums_registered' => $locums_registered,
       ];

       $superAdmins = User::role('super admin')->get();

       foreach ($superAdmins as $admin) {
           $admin->notify(new SuperAdminMoreDataNotification($data));
       }
   }
```

In this example, the `handle` method queries the database for the data we need, collates the data into an array, retrieves all super admins, and sends them the notification [Source 12](https://dev.to/kingsconsult/schedule-a-task-to-run-at-a-specific-time-in-laravel-cronjob-5aaf).

### 5. Schedule the Job

Finally, the job needs to be scheduled to run every day at midnight. This can be done in the `schedule` method of the `App\Console\Kernel` class:

```php
   protected function schedule(Schedule $schedule)
   {
       $schedule->job(new SendSuperAdminMoreDataNotification)->daily();
   }
```

This will schedule the job to run every day at midnight [Source 0](https://www.twilio.com/blog/send-recurring-emails-php-sendgrid-laravel-7-task-scheduler).
 to handle roles and permissions.
