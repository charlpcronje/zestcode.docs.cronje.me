# Add Mock User

A Mock user is must be used if you want to give an LLM access to the website to test it or to advise 
on updates. So in this case a Mock user will be created and auto logged in whenever you add `?role=1` 
to the url, the number can be exchanged for any of the roles that the AI needs to mock, further you can
also add `&user_id=1` to the url to be auto logged in as that user. Just be sure to remove this 
middleware from the system before production. This middle ware will also only be loaded 
if the `APP_ENV` is set to `local`

## First create the middleware

```sh
php artisan make:middleware CreateMockUserAndLoginAsUser
```

## Middleware code

```php
// app/Http/Middleware/CreateMockUserAndLoginAsUser.php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CreateMockUserAndLoginAsUser
{
    
    public function handle(Request $request, Closure $next)
    {
        // Ensure we are in a 'local' environment
        if (app()->environment('local')) {
            // Create mock user based on 'role' URL parameter
            if ($request->has('role')) {
                // Security measure: Only allow this in non-production environments
                if (app()->environment('local')) {
                    $role = $request->input('role');

                    // Validate role
                    if (in_array($role, [1, 2, 3])) {
                        // Check if a mock user with this role already exists
                        $existingUser = \App\Models\User::where('email', 'mock' . $role . '@example.com')->first();

                        if (!$existingUser) {
                            // Create mock user
                            $user = new \App\Models\User();
                            $user->name = 'Mock User';
                            $user->email = 'mock' . $role . '@example.com';  // Unique email based on role
                            $user->password = bcrypt('password');
                            $user->save();

                            // Attach role to user
                            $user->roles()->attach($role);

                            if ($role == 2) {
                                $this->linkUserToPractice($user->id);
                            }
                        }
                    }
                }
            }

            // Log in as a user based on 'user_id' URL parameter
            if ($request->has('user_id')) {
                // Security measure: Only allow this in non-production environments
                if (app()->environment('local')) {
                    $user_id = $request->input('user_id');

                    // Find the user by ID
                    $user = \App\Models\User::find($user_id);

                    if ($user) {
                        // Log in as this user
                        Auth::login($user);
                    }
                }
            }

            return $next($request);
        }
    }

    // Separate method to link user to a practice
    private function linkUserToPractice($userId)
    {
        // Assume the first practice in the practice table is the one to be linked
        $firstPracticeUser = \App\Models\PracticeUser::first();
        if ($firstPracticeUser) {
            $firstPracticeUser->user_id = $userId;
            $firstPracticeUser->save();
        }
    }
}

```

## Registration

If this middleware is not already registered, you can do so by adding it to the $middleware array in your `app/Http/Kernel.php` file:

```php
// app/Http/Kernel.php

protected $middleware = [
    // ...
    \App\Http\Middleware\CreateMockUserAndLoginAsUser::class,
];
```

## Important Security Notes

**Environment Checks:** This example only allows these features in a 'local' environment. You should adjust this according to your specific needs and ensure it's not accessible in production.

**Authorization:** This example does not include any authorization checks. If you decide to allow this functionality in environments other than 'local', make sure to add authorization checks to ensure that only trusted users can use these features.
Use this feature cautiously and ensure it's secure before deploying.

Use this feature cautiously and ensure it's secure before deploying.