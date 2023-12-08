# Chat setup with Charify and Pusher

## 1. Install Charify

```sh
composer require beyondcode/charify
```

## 2. Publish the package's configuration and migration files

Run the following commands:

```sh
php artisan vendor:publish --provider="BeyondCode\Charify\CharifyServiceProvider" --tag="migrations"
php artisan vendor:publish --provider="BeyondCode\Charify\CharifyServiceProvider" --tag="config"
```

## 3. Run the migrations

```sh
php artisan migrate
```

## 4. Set environment variables

In your .env file, configure the broadcast driver to use Pusher and set the following variables:

```env
BROADCAST_DRIVER=pusher
PUSHER_APP_ID=your-app-id
PUSHER_APP_KEY=your-app-key
PUSHER_APP_SECRET=your-app-secret
PUSHER_APP_CLUSTER=mt1
```

Also, you need to add the following variables to point to your WebSocket server:

```
PUSHER_HOST=
PUSHER_PORT=
PUSHER_SCHEME=
```

## 5. Configure the Pusher connection

In your `config/broadcasting.php` file, set the options for the Pusher connection:

```php
'pusher' => [
    'driver' => 'pusher',
    'key' => env('PUSHER_APP_KEY'),
    'secret' => env('PUSHER_APP_SECRET'),
    'app_id' => env('PUSHER_APP_ID'),
    'options' => [
        'cluster' => env('PUSHER_APP_CLUSTER'),
        'useTLS' => false,
        'host' => env('PUSHER_HOST'),
        'port' => env('PUSHER_PORT'),
        'scheme' => env('PUSHER_SCHEME')
    ],
],
```

## 6. Run the WebSocket server

You can start the WebSocket server using the following command:

```sh
php artisan websockets:serve
```

## 7. Create a ChatController

```sh
php artisan make:controller ChatController
```

## 8. Create a Chat model

```sh
php artisan make:model Chat
```

## 9. Create a ChatMessage model

```sh
php artisan make:model ChatMessage
```

## 10. Create a ChatMessageObserver

```sh
php artisan make:observer ChatMessageObserver --model=ChatMessage
```

## 11. Create a ChatMessagePolicy

```sh
php artisan make:policy ChatMessagePolicy --model=ChatMessage
```

## 12. Create a ChatMessageController

```sh
php artisan make:controller ChatMessageController
```

## 13. Create a ChatMessageRequest

```sh
php artisan make:request ChatMessageRequest
```

## 14. Create a ChatMessageResource

```sh
php artisan make:resource ChatMessageResource
```

## 15. Create a ChatMessageCollection
