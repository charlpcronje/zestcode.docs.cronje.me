# Auto install Script

In this same folder you will find bash script with the name of `init.sh`

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

```bash
# from the root of your project
cp .docs/init.sh .
# Make the file executable
chmod +x init.sh
./init.sh # run the script, and follow the prompts
```