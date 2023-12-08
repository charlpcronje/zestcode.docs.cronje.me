# Laravel WebSockets and Pusher

Implementing sockets with in Laravel consider using `Laravel Echo` with `Laravel Websockets`. These are well-suited for real-time broadcasting events in `Laravel`` and `Livewire`` applications.

Here are the steps to integrate `Laravel` with `Laravel` `Websockets`:

1. Install `Laravel` `Websockets`: `Laravel` `Websockets` is a package for `Laravel` that allows you to create a `WebSocket` server. Install it using composer:

```sh
composer require beyondcode/laravel-websockets
```

2. Publish the package's configuration and migration files: Run the following commands:

```sh
php artisan vendor:publish --provider="BeyondCode\LaravelWebSockets\WebSocketsServiceProvider" --tag="migrations"
php artisan vendor:publish --provider="BeyondCode\LaravelWebSockets\WebSocketsServiceProvider" --tag="config"
```

3. Run the migrations: It will create a table to store statistics about your WebSocket server:
```sh
php artisan migrate
```

4. Set environment variables: In your .env file, configure the broadcast driver to use Pusher and set the following variables:

```env
BROADCAST_DRIVER=pusher
PUSHER_APP_ID=your-app-id
PUSHER_APP_KEY=your-app-key
PUSHER_APP_SECRET=your-app-secret
PUSHER_APP_CLUSTER=mt1
```

Also, you need to add the following variables to point to your WebSocket server:

```
PUSHER_HOST=127.0.0.1
PUSHER_PORT=6001
PUSHER_SCHEME=http
```

5. Configure the Pusher connection: In your `config/broadcasting.php` file, set the options for the Pusher connection:
```php
'pusher' => [
    'driver' => 'pusher',
    'key' => env('PUSHER_APP_KEY'),
    'secret' => env('PUSHER_APP_SECRET'),
    'app_id' => env('PUSHER_APP_ID'),
    'options' => [
        'cluster' => env('PUSHER_APP_CLUSTER'),
        'useTLS' => false,
        'host' => '127.0.0.1',
        'port' => 6001,
        'scheme' => 'http'
    ],
],
```

6. Run the WebSocket server: You can start the WebSocket server using the following command:

```sh
php artisan websockets:serve
```

Laravel Echo and configure it to use your WebSocket server as I described in the previous message.

5. Use Laravel Echo in Livewire: In your Livewire component, you can now listen for broadcasted events using Laravel Echo. For example, if you have a ChatMessageCreated event:

```php
   protected $listeners = [
       'echo-private:chat,.ChatMessageCreated' => 'notifyNewMessage',
   ];

   public function notifyNewMessage($payload)
   {
       // Handle the new chat message...
   }
```

Remember to run the command `php artisan websockets:serve` to start the WebSocket server.

This setup will give you a robust, real-time chat application using WebSockets with Laravel Livewire.