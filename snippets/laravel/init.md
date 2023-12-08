# Laravel Init Bash Script

## This script will do the following:

- Install Composer
  - Download `composer setup`
  - Update the `composer` setup to use `http` instead of `https` for issues with `ssl`
- Run the `composer` setup
  - Run `composer.phar` install
  - Run `composer.phar` dump-autoload
- Run Artisan commands
  - Create a `project key`
  - Create a `symbolic link` to the `storage` folder
- Install `js` dependencies
- Run `yarn install` for depencies
- Install `laravel-mix`
- Run `yarn dev` to `compile` the assets
- Check if the file `webpack.mix.js` exists
- Check if the `.env` file exists
- Ask for `DB details` and update the `.env` file
- Check if any `.sql` files exist in the current directory
- Connect to `MySQL` and `create/import` databases
- Do the `migrations`
- Do the `database seeders`
- Start local server

## How to use
Copy the `init.sh` file to the root of your project and run it.

```sh
# from the root of your project
cp init.sh /root/ofYourProhect/init.sh && cd /root/ofYourProhect
# Make the file executable
chmod +x init.sh
./init.sh # run the script, and follow the prompts
```

## The Script 
```sh
#!/bin/bash

#################################
### Install Composer
#################################
read -p "Do you need to install composer.phar? (y/n): " response

if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "Now downloading composer installer."
    wget https://getcomposer.org/installer   # Download the composer-setup.php script
    echo "renaming 'installer' to composer-setup.php"
    mv installer composer-setup.php  # The file that will be downloaded will be called `installer` so rename it `composer-setup.php
    echo "replacing 'https' to 'http' in composer-setup.php"
    sed -i 's/https/http/g' composer-setup.php  # change https to http to avoid any ssl errors
    echo "runnning 'php composer-setup.php'"
    php composer-setup.php # This will install the correct composer.phar file in the sme folder
    echo "removing composer-setup.php"
    rm composer-setup   # This removes the compser-setup.php file, and there will now be a co
else
    echo "Remember that in some cases composer can complain about the wrong version of php even though you have the correct version installed, that doesn't mean there is someything wrong with php but simply that the wrong php-cli is in the path. The easiest way past this is to install run the composer-setup.php that will download the correct version composer.phar that is compatible with the php runtime"
fi

#################################
### Install the project dependencies
#################################
read -p "Do you want to run composer install (y/n): " response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "running 'php composer.phar install --disable-tls', to install dependencies, --disable-tls is to avoid any ssl errors"
    php composer.phar install --disable-tls   # To install the project dependencies
else
    echo "Skipping running composer install"
fi

#################################
### Regenerate the autoload files
#################################
read -p "Do you want to regerate the autoload files (y/n): " response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "running 'php composer.phar dump-autoload', to dump the autoload file and regenerate it"
    php composer.phar dump-autoload
else
    echo "Skipping running composer dump-autoload"
fi

#################################
### Create a project key
#################################
read -p "Do you need to generate a new key for the project?? (y/n): " response

if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "running 'php artisan key:generate', to generate the app key"
    php artisan key:generate
else
    echo "Skipping generating a new key for the project"
fi


#################################
### Symbolic link to the storage folder?
#################################
read -p "Do you need to create a symbolic link to the storage folder? (y/n): " response

if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "running 'php artisan storage:link', to create the symbolic link to the storage folder"
    php artisan storage:link
else
    echo "Skipping creating a symbolic link to the storage folder"
fi

#################################
### Run yarn install for depencies
#################################
read -p "Do you need to run the yarn install? (y/n): " response
    echo "running 'yarn install', to run the yarn install"
    yarn install
else
    echo "Skipping running the yarn install"
fi

#################################
### Check if the file webpack.mix.js exists
#################################
if [ -f webpack.mix.js ]; then
    read -p "Do you need to compile the project assets with mix? (y/n): " response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        echo "running 'yarn dev', create create manifest.mix.js and compile the project assets"
        yarn add laravel-mix --dev
    else
        echo "Skipping 'yarn dev'"
    fi
fi

#################################
### Check if the file webpack.mix.js exists
#################################
if [ -f webpack.mix.js ]; then
    echo "Detected webpack.mix.js adding laravel resrouces:"
    echo "Open webpack.mix.js and check that the following directives are present:"
    echo "mix
            .js('resources/js/app.js', 'public/js/app.js')
            .vue()
            .postCss('resources/css/app.css', 'public/css', [require('@tailwindcss/jit')])
            .copyDirectory('resources/images', 'public/img')
            .copyDirectory('resources/svg', 'public/svg')
            .purgeCss({
                css: ['public/css/app.css'],
                enabled: mix.inProduction(),
            })
            .version(['public/svg/sprite.svg'])
            .sourceMaps();
            .sass('resources/sass/app.scss', 'public/css');"
else
    echo "File webpack.mix.js does not exist."
    echo "To compile the project assets you can either install Webpack or Gulp or you can refer to the follwing documentation:"
    echo "Laravel Documentation - Mix: https://laravel.com/docs/8.x/mix"
    echo "Webpack Documentation: https://webpack.js.org/"
    echo "Gulp Documentation: https://gulpjs.com"
    echo "Babel Documentation: https://babeljs.io"
    echo "Sass Documentation: https://sass-lang.com"
    echo "PostCSS Documentation: https://postcss.org"
fi


#################################
### Now check for db's to import, first checking if the .env file exists
#################################
if [ -f .env ]; then
    # Source the .env file
    source .env
    
    # Check if the required variables have empty values
    if [ -z "$DB_HOST" ] || [ -z "$DB_USERNAME" ] || [ -z "$DB_PASSWORD" ]; then
        read -p "Do you want to update the DB details in .env file? (y/n): " answer
        if [[ "$response" =~ ^[Yy]$ ]]; then
            # Prompt the user to enter the values for the required variables
            read -p "Enter the database host: " DB_HOST
            read -p "Enter the database username: " DB_USERNAME
            read -sp "Enter the database password: " DB_PASSWORD
            echo
        fi
    else
        # Update the values in the .env file
        sed -i "s/^DB_HOST=.*/DB_HOST=$DB_HOST/" .env
        sed -i "s/^DB_USERNAME=.*/DB_USERNAME=$DB_USERNAME/" .env
        sed -i "s/^DB_PASSWORD=.*/DB_PASSWORD=$DB_PASSWORD/" .env
    fi
else
    # Prompt the user to enter the values for the required variables
    read -p "Enter the database host: " DB_HOST
    read -p "Enter the database username: " DB_USERNAME
    read -sp "Enter the database password: " DB_PASSWORD
    echo
fi

# Update the .env file with the entered values
echo "DB_CONNECTION=mysql" > .env
echo "DB_HOST=$DB_HOST" >> .env
echo "DB_PORT=3306" >> .env
echo "DB_DATABASE=mydatabase" >> .env
echo "DB_USERNAME=$DB_USERNAME" >> .env
echo "DB_PASSWORD=$DB_PASSWORD" >> .env

 
# Check if any .sql files exist in the current directory
sql_files=(./*.sql)
if [ ${#sql_files[@]} -eq 0 ]; then
    echo "No .sql files found. No database will be imported."
else echo "Found .sql files:"
    #################################
    ### Connect to MySQL and create/import databases
    #################################
    read -p "So you want to import .sql files? (y/n): " answer
    if [[ "$response" =~ ^[Yy]$ ]]; then
        for sql_file in "${sql_files[@]}"; do
        db_name=$(basename "$sql_file" .sql)
        read -p "Do you want to create and import database '$db_name'? (y/n): " answer
        case $answer in
            [Yy]* )
            mysql -h "$DB_HOST" -u "$DB_USERNAME" -p"$DB_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $db_name;"
            mysql -h "$DB_HOST" -u "$DB_USERNAME" -p"$DB_PASSWORD" "$db_name" < "$sql_file"
            mv "$sql_file" "$sql_file.imported"
            ;;
            [Nn]* )
            echo "Skipping database '$db_name'"
            ;;
            * )
            echo "Invalid input. Skipping database '$db_name'"
            ;;
        esac
        done
        echo "Database import completed successfully."
    else
        echo "Skipping database import."
    fi
fi

#################################
### Do the migrations
#################################
read -p "Do you want run the migrations? (Y/N): " choice

if [ -n "$(ls -A database/migrations/*.php 2>/dev/null)" ]; then
    # Loop through each migration file
    for migration_file in database/migrations/*.php; do
        # Extract the migration name from the file name
        migration_name=$(basename "$migration_file" .php)
        
        # Prompt the user to run the migration
        read -p "Do you want to run the migration $migration_name? (Y/N): " choice
        if [[ $choice == "Y" || $choice == "y" ]]; then
            # Run the migration using the php artisan command
            php artisan migrate --path="database/migrations/$migration_name.php"
        else
            echo "Skipping migration: $migration_name"
        fi
    done
else
    echo "No migrations to run"
fi


#################################
### Do the database seeders
#################################
if [ -n "$(ls -A database/seeds/*.php 2>/dev/null)" ]; then
    # Loop through each seeder file
    for seeder_file in database/seeds/*.php; do
        # Extract the seeder name from the file name
        seeder_name=$(basename "$seeder_file" .php)
        
        # Prompt the user to run the seeder
        read -p "Do you want to run the seeder $seeder_name? (Y/N): " choice
        if [[ $choice == "Y" || $choice == "y" ]]; then
            # Run the seeder using the php artisan command
            php artisan db:seed --class="$seeder_name"
        else
            echo "Skipping seeder: $seeder_name"
        fi
    done
else
    echo "No seeders to run"
fi

#################################
### Start local server
#################################

read -p "AWESOME, DONE! Now do you want to start a local server for this project? (Y/N): " choice
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "running 'php artisan serve', to start a local server"
    hp artisan serve
else
    echo "Skipping starting a local server"
fi

echo "DONE!"
```
