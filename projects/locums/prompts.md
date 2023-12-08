# Super admin more data notifications
For this task, a daily job will do the following to 
- collate the total number of practice sign-ups, so this will be in the `practices` table and the `Practice` model
- shifts added, this will be in the `vacancies` table and the `Vacancy` model 
- applications, this will be in the `user_vacancy` table and the `UserVacancy` model
- locums registered., this will be in the `users` table and the `User` model, in the `User` model there is a method: `HasRoles` that will return all the users that have the role of `consultant` so this will be used to get the number of locums registered.
- The email will be sent to the super admin email address, is all users have the role of `super admin`, then the email will be sent to all users with the role of `super admin`.
This will send as a notification and must be added to laravel's scheduling kernel every day at midnight and will get information from 12am the previous day so it’s a full 24hr period.

Here is the database structure for reference:
# Database Structure

## Table: users
### Description: This table holds the user data
### Columns:
``` 
- id
- address_id
- name
- email
- email_verified_at
- password
- remember_token
- created_at
- updated_at
- stripe_id
- pm_type
- pm_last_four
- trial_ends_at
```

# Data: Here is an example of the 3 types of users, consultant, practice and Super Admin
```csv
id,"address_id","name","email","email_verified_at","password","remember_token","created_at","updated_at","stripe_id","pm_type","pm_last_four","trial_ends_at"
1,,"Super Admin","administrator@mfl.com","2023-5-2 13:24:58","$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi","EN51HYDZmIE5Hl7WqPNhro9xgAPRhbNIEzOEJ7FaSElfdHhljXOaJtsMv0eG","2023-3-6 16:37:41","2023-5-2 13:24:58",,,,
2,,"Example Locum","locum@example.com","2023-5-2 13:24:58","$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi","VX4nFVnWdz","2023-4-15 13:34:28","2023-5-2 13:24:58",,,,
3,,"Example Vet User","vet@example.com","2023-5-2 13:24:58","$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi","Kc1eThOsyEMygxZZ02G6kDGOKVkTQlnn1SrMFzsc8oTmYTITwpz8EFkx7DNL","2023-3-21 08:04:30","2023-5-2 13:24:59","cus_NovAyYQmK2MesO",,,
```

## Table: roles
### Description: This table has 3 entries
### Columns:
```
- id
- name
- guard_name
- created_at
- updated_at
```

### Data:
```csv
id,name, guard_name, created_at, updated_at
1, consultant,web,2023-05-02 13:24:58, 2023-05-02 13:24:58
2, practice,web,2023-05-02 13:24:58, 2023-05-02 13:24:58
3, Super Admin,web,2023-05-02, 13:24:58, 2023-05-02 13:24:58
```


## Table: model_has_roles
### Description: This table contains the role_id and the model_id and the model_type, so basically it can assign roles to any model,  This table joins to the users table on the model_id and where the model_type = `App\Models\User`
### Columns:
```
- role_id
- model_type
- model_id
```

Data:
```csv
role_id,model_type,model_ud
3,App\Models\User,1
1,App\Models\User,2
2,App\Models\User,3
1,App\Models\User,5
2,App\Models\User,6
1,App\Models\User,7
2,App\Models\User,8
```

## Table:  user_vacancy
### Description: This table contains the user_id and the vacancy_id and the status, So this table is responsible for linking users to a vacancy a practice posted, and the status can be either successful, declined or pending. The entries in this table get talked about as applications
### Columns:
```
- user_id
- vacancy_id
- status, this can be either be successful, declined or pending
- created_at
- updated_at
```
Data:
```csv
user_id,vacancy_id,status,created_at,updated_at
9,108,successful,2023-06-09 15:03:00,2023-06-15 19:20:03
24,476,declined,2023-07-05 13:22:53,2023-07-07 14:56:28
122,1165,declined,2023-07-08 20:54:29,2023-08-24 14:23:03
24,1291,pending,2023-07-14 18:27:19,2023-07-14 18:27:19
```

## Table: practices
### Description: This refer to veterinary practices that can add entries to the vacancies table
### Columns:
```
- id
- address_id
- user_id
- name
- phone_number
- email
- description
- agency
- credits
- created_at
- updated_at
- logo
```
### Data:
```csv
id,"address_id","user_id","name","phone_number","email","description","agency","credits","created_at","updated_at","logo"
2,,"6","Molly Fiander","07412225220","info@managementforlocums.com",,"0","200","2023-5-3 14:24:56","2023-7-13 14:46:01","practice_logos/5463b68b-c029-477a-9c42-5b1a76546422MFL logo.png"
3,,"8","Help Search Locate","07535587851","hannah@helpsearchlocate.com",,"1","9999682","2023-5-4 15:09:11","2023-8-24 14:22:42","practice_logos/f97a88d1-8044-43aa-9df1-45a4aab6d945you (1).png"
5,,"34","CVS","01328 862137","kerrie.allen@cvsvets.com",,"0","0","2023-5-10 19:18:33","2023-6-6 16:08:11",
```

## Table: vacancies
### Description: This is where practices posts vacancies, and consultants can apply to them
### Columns:
```
- id
- title
- description
- location
- lat
- lng
- day_hourly_salary
- night_hourly_salary
- night_rate_multiplier
- day_rate_multiplier
- currency
- position_type
- position_level
- start_date
- end_date
- charge_type
- filled
- practice_id
- created_at
- updated_at
- clicks
```
### Data:
```csv
id,"title","description","location","lat","lng","day_hourly_salary","night_hourly_salary","night_rate_multiplier","day_rate_multiplier","currency","position_type","position_level","start_date","end_date","charge_type","filled","practice_id","created_at","updated_at","clicks"  
19,"Locum Vet - Breeder Imaging Services, Lincolnshire","<div>Locum Vet - Spalding, Lincolnshire<br>Start date: any considered<br>End date: ongoing<br>Hours: 3 days per week - 9am - 5pm<br>Accommodation may be available<br>main focus is radiography for canine health schemes, so proficiency in administering IV sedation is important.&nbsp
20,"Locum Vet - Berkshire","<div>Independent practice - Windsor, Berkshire<br><br>Start: 7th August<br>End: 18th August<br><br>Some sole charge may be involved<br><br>Hours: 4 or 5 days week, Mon to Fri. One late night til 9pm<br><br>Weekends: none<br><br>Accommodation and use of a car can be provided, if required. &nbsp
```

## Table: addresses
### Description: This table holds the address data for the practices and the users
### columns:
```
id
addressable_type
addressable_id
address_line_1
address_line_2
city
county
postcode
lat
lng
created_at
updated_at
```

# Data
```csv
id,"addressable_type","addressable_id","address_line_1","address_line_2","city","county","postcode","lat","lng","created_at","updated_at"
1,"App\Models\User","2","196 Finley Throughway","4","Hunterville","Derbyshire","N14 5HW","53.1","-1.56","2023-5-2 13:24:58","2023-5-12 19:23:33"
2,"App\Models\Practice","1","2 Eden Lights",,"South Nikki","Lancashire","NP44 4PE","53.76","-2.7","2023-5-2 13:24:59","2023-5-2 13:24:59"
```



## Here are the eloquent models
### Practice model
```php
<?php

namespace App\Models;

use App\Traits\Reviewable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Practice extends Model
{
    use HasFactory;
    use Reviewable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'phone_number',
        'email',
        'description',
        'agency',
    ];

    protected $editable = [
        'name' => [
            'rules' => ['required', 'string', 'max:255'],
        ],
        'email' => [
            'rules' => ['required', 'email', 'unique:practices,email'],
        ],
        'user.name' => [
            'rules' => ['required', 'email', 'unique:user,email'],
        ],
        'user.email' => [
            'rules' => ['required', 'email', 'unique:user,email'],
        ],
        'description' => [
            'rules' => ['nullable'],
            'type' => 'html',
        ],
    ];

    protected $table = 'practices';

    public function editableFields()
    {
        return $this->editable;
    }

    public function address()
    {
        return $this->morphOne(Address::class, 'addressable');
    }

    public function vacancy()
    {
        return $this->hasMany(Vacancy::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function applicants()
    {
        return $this->hasManyThrough(
            User::class,
            Vacancy::class,
            'user_vacancy.user_id',
            'user_vacancy.vacancy_id',
            'id'
        );
    }

    public function scopeIsWithinMaxDistance($query, $location, $radius = 25)
    {
        $haversine = "(6371 * acos(cos(radians($location->latitude))
                        * cos(radians(model.latitude))
                        * cos(radians(model.longitude)
                        - radians($location->longitude))
                        + sin(radians($location->latitude))
                        * sin(radians(model.latitude))))";

        return $query
            ->select() //pick the columns you want here.
            ->selectRaw("{$haversine} AS distance")
            ->whereRaw("{$haversine} < ?", [$radius]);
    }
}
```

### User model
```php
<?php

namespace App\Models;

use App\Providers\RouteServiceProvider;
use App\Traits\Reviewable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Cashier\Billable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;
use Thomasjohnkane\Snooze\Traits\SnoozeNotifiable;

class User extends Authenticatable implements MustVerifyEmail
{
    use HasApiTokens;
    use HasFactory;
    use Notifiable;
    use SnoozeNotifiable;
    use Billable;
    use HasRoles;
    use Reviewable;


    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $editable = [
        'name' => [
            'rules' => ['required', 'string', 'max:255'],
        ],
        'email' => [
            'rules' => ['required', 'email', 'unique:users,email'],
        ],
        'profile.rcs_number' => [
            'rules' => ['nullable'],
        ],
        'profile.phone' => [
            'rules' => ['nullable'],
        ],
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function address()
    {
        return $this->morphOne(Address::class, 'addressable');
    }

    public function isCurrentlyPayingSubcription() {
        $activeSubs = \DB::table('subscriptions')
                 ->select(\DB::raw('*'))
                 ->where([
                    [
                        'user_id', '=', $this->id
                    ],
                    [
                        'stripe_status', '!=', 'canceled'
                    ]
                 ])
                 ->get();

        if(!$activeSubs) return false;

        if(!$activeSubs->count()) return false;

        return true;
    }

    public function practice()
    {
        return $this->hasOne(Practice::class);
    }

    public function profile()
    {
        return $this->hasOne(UserProfile::class);
    }

    public function applications()
    {
        return $this->belongsToMany(Vacancy::class)->withPivot('status');
    }

    public function getRoutePrefixAttribute()
    {
        return ($this->has('practice')) ? 'practice' : '';
    }

    public function getHomeAttribute()
    {
        if ($this->hasRole('Super Admin')) {
            return RouteServiceProvider::ADMIN_DASHBOARD;
        }

        return ($this->practice) ? RouteServiceProvider::PRACTICE_DASHBOARD : RouteServiceProvider::CONSULTANT_DASHBOARD;
    }

    public function editableFields()
    {
        return $this->editable;
    }
}
```

### Vacancy model
```php
<?php

namespace App\Models;

use App\Enums\ChargeType;
use App\Enums\ExperienceLevel;
use App\Enums\PositionType;
use App\Traits\Reviewable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Laravel\Scout\Searchable;
use App\Models\Address as AddressModal;
use Illuminate\Support\Facades\DB;

class Vacancy extends Model
{
    use HasFactory;
    use Searchable;
    use Reviewable;

    const DAY_RATE_DEFAULT_MULTIPLIER = 8;

    const NIGHT_RATE_DEFAULT_MULTIPLIER = 12;

    protected $guarded = [];

    protected $casts = [
        'position_type' => PositionType::class,
        'position_level' => ExperienceLevel::class,
        'charge_type' => ChargeType::class,
    ];

    protected $attributes = [
        'day_rate_multiplier' => self::DAY_RATE_DEFAULT_MULTIPLIER,
        'night_rate_multiplier' => self::NIGHT_RATE_DEFAULT_MULTIPLIER,
    ];

    protected $dates = [
        'start_date',
        'end_date',
    ];

    public function getLatAttribute($value)
    {

        $theAddress = DB::select('select * from `addresses` where (`addressable_id` = '.$this->id.' and `addressable_type` LIKE "%App\\\\\\\\Models\\\\\\\\Vacancy%") limit 1');


        return isset($theAddress[0]) && isset($theAddress[0]->lat) ? $theAddress[0]->lat : $value;

        
    }

    public function getLngAttribute($value)
    {
        $theAddress = DB::select('select * from `addresses` where (`addressable_id` = '.$this->id.' and `addressable_type` LIKE "%App\\\\\\\\Models\\\\\\\\Vacancy%") limit 1');

        return isset($theAddress[0]) && isset($theAddress[0]->lng) ? $theAddress[0]->lng : $value;
    }

    public function practice()
    {
        return $this->belongsTo(Practice::class);
    }

    public function getDayRateAttribute()
    {
        return $this->day_hourly_salary * $this->day_rate_multiplier;
    }

    public function getNightRateAttribute()
    {
        return $this->night_hourly_salary * $this->night_rate_multiplier;
    }

    public function getDateStartAttribute()
    {
        return ($this->start_date) ? $this->start_date->toDateString() : null;
    }

    public function getDateEndAttribute()
    {
        return ($this->end_date) ? $this->end_date->toDateString() : null;
    }

    public function scopeForPractice(Builder $query)
    {
        $practice = Auth::user()->practice->id;

        return $query->whereHas(
            'practice',
            function ($query) use ($practice) {
                $query->where('practice_id', $practice);
            }
        );
    }

    public function toSearchableArray(): array
    {
        return [
            'id' => $this->getKey(), // this *must* be defined
            'title' => $this->title,
        ];
    }

    public function applicants()
    {
        return $this->belongsToMany(User::class);
    }

    public function address()
    {
        return $this->morphOne(Address::class, 'addressable');
    }

    public function practiceAddress()
    {
        return $this->through('practice')->has('address');
    }

    public function scopeIsFullfilled($query)
    {
        return $query->with('applicants', function ($query) {
            $query->withPivot('status')
                ->wherePivot('status', 'successful')
                ->withTimestamps();
        });
    }

    public function scopeIsWithinMaxDistance($query, array $location, $radius = 25)
    {
        if ($location['lat'] && $location['lng']) {

            //  ORIGINAL    
            // $haversineSQL = '( 3959 * acos( cos( radians('.$location['lat'].') ) * cos( radians( lat ) ) * cos( radians( lng ) - radians('.$location['lng'].') ) + sin( radians('.$location['lat'].') ) * sin( radians(lat) ) ) )';
            // return $query->whereRaw($haversineSQL.'<= ?', [$radius]);


            $haversineSQL = '( 3959 * acos( cos( radians('.$location['lat'].') ) * cos( radians( addresses.lat ) ) * cos( radians( addresses.lng ) - radians('.$location['lng'].') ) + sin( radians('.$location['lat'].') ) * sin( radians(addresses.lat) ) ) )';

            // $query->Join('addresses', 'vacancies.id', '=', 'addresses.addressable_id');
            $query->Join('addresses', function($join)
            {
                $join->on('addresses.addressable_id', '=', 'vacancies.id')
                     ->where('addresses.addressable_type', '=', 'App\Models\Vacancy');
            }); 
 

            // $query->Where('addresses.')

            return $query->whereRaw($haversineSQL.'<= ?', [$radius]);
        }

        return $query;
    }

    public static function boot()
    {
        parent::boot();
        static::saving(
            function (Vacancy $item) {
                $location = $item->address;
                if ($location) {
                    $item->location = $location->city ?? $location->county;
                    $item->lat = $location->lat;
                    $item->lng = $location->lng;
                }
            }
        );
    }
}
```

### UserVacancy model
```php


