# Ploi Deploy

When deploying via Ploi there might be some inconsistency with the `node_modules` that's being installed on the `linux` server and that of your local `Windows`. This could be because of a different version of `node.js` or a different version of `yarn` or both.

So I've realize to get a more consistent success on deployment, add the following line to the deploy script in `ploi`

```sh
rm -f yarn.lock
rm -rf node_modules
```

So the full deploy script will then look something like

```sh
cd /home/strato/lawpal.strato.maya.agency

git pull origin {BRANCH}
rm -f yarn.lock
rm -rf node_modules

rm -f ./bootstrap/cache/config.php
rm -f ./bootstrap/cache/packages.php
rm -f ./bootstrap/cache/routes.php

composer install --no-interaction --prefer-dist --optimize-autoloader

yarn install
yarn run production

echo "" | sudo -S service php7.3-fpm reload

echo "Caching routes..."
php7.3 artisan route:cache -v
echo "Clearing view cache..."
php7.3 artisan view:clear
echo "Migrating database..."
php7.3 artisan migrate --force
echo "Making sitemap..."
php7.3 artisan make:sitemap

echo "🚀 Application deployed!"
```