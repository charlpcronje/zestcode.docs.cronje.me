# HeEPP - Hyper extensible Element Pre-Processor

What is `HeEPP`, I'll demo it one day but it's an PHP MVC Framework like Laravel, but works on a very different way of thinking:
I really think `Laravel` can learn a few thing about keeping it simple sometimes and one thing that no other framework does except the one I created `HeEPP`. Are to be able to run multiple projects of one framework codebase, because all the other frameworks you have to edit the framework files to make anything work, where on `HeEPP` you can create any Framework file in your own project and it will be used instead of the default. So for instance: 
> `HeEPP` would have `Controllers/BaseController.php` and most controllers will extend `\HeEPP\Controllers\BaseController.php` But if you created a `Controllers/BaseController`.php file in your own project then it will be used instead of the default one. 

This way your own project will only include one file in your index file and that's `../HeEPP/index.php`. So your own project begins with only one file and that's the index.php, so there's no clutter and Framework stuff in between your own files that's just there because they have to be.

It does pretty much the same thing as Laravel, but focused on reusability and extendibility. With it's own package and dependency manager (`Composer` did not exist yet so I created my own).