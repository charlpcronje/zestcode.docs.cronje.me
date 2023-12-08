# Updated Package.json

This is when the node.js version is updated on the server, this package.josn contains the updated npm modules compatible with node.js version 18.0.0 it also contains different scripts for different operating systems.

```json
{
    "private": true,
    "scripts": {
        "dev": "run-script-os",
        "development": "run-script-os",
        "watch": "run-script-os",
        "watch-poll": "run-script-os",
        "hot": "run-script-os",
        "prod": "npm run production",
        "production": "run-script-os",
        "dev:win32": "set TAILWIND_MODE=build && mix",
        "development:win32": "set TAILWIND_MODE=build && mix",
        "watch:win32": "set TAILWIND_MODE=watch && mix watch",
        "watch-poll:win32": "set TAILWIND_MODE=watch && mix watch -- --watch-options-poll=1000",
        "hot:win32": "set TAILWIND_MODE=watch && mix watch --hot",
        "production:win32": "set TAILWIND_MODE=build && mix --production",
        "dev:linux": "TAILWIND_MODE=build mix",
        "development:linux": "TAILWIND_MODE=build mix",
        "watch:linux": "TAILWIND_MODE=watch mix watch",
        "watch-poll:linux": "TAILWIND_MODE=watch mix watch -- --watch-options-poll=1000",
        "hot:linux": "TAILWIND_MODE=watch mix watch --hot",
        "production:linux": "TAILWIND_MODE=build mix --production"
    },
    "devDependencies": {
        "@babel/core": "7.15.8",
        "axios": "^0.19",
        "bootstrap": "^4.0.0",
        "cross-env": "^7.0",
        "enso-carousel": "^2.0.6",
        "eslint-plugin-jsx-a11y": "6.4.1",
        "eslint-plugin-react-hooks": "4",
        "imagemin-webpack-plugin": "^2.4.2",
        "jquery": "^3.2",
        "laravel-mix": "^6.0.49",
        "laravel-mix-purgecss": "^6.0.0",
        "lodash": "^4.17.19",
        "popper.js": "^1.12",
        "postcss-cli": "^10.1.0",
        "resolve-url-loader": "^2.3.1",
        "sass": "^1.20.1",
        "sass-loader": "^8.0.0",
        "svg-spritemap-webpack-plugin": "^3.9.0",
        "tailwindcss": "^3.3.3",
        "vue": "^2.5.17",
        "vue-loader": "^15.9.5",
        "vue-template-compiler": "^2.6.10"
    },
    "dependencies": {
        "@tailwindcss/aspect-ratio": "^0.2.0",
        "@tailwindcss/forms": "^0.3.2",
        "@tailwindcss/postcss7-compat": "^2.0.3",
        "@tailwindcss/typography": "^0.4.0",
        "autoprefixer": "^10.4.15",
        "date-fns": "^2.21.1",
        "eslint": "^7.20.0",
        "eslint-config-airbnb": "^18.2.1",
        "eslint-config-prettier": "^8.0.0",
        "eslint-plugin-prettier": "^3.3.1",
        "js-cookie": "^3.0.1",
        "maya-cookie-notice-vue": "^1.0.2",
        "ordinal": "^1.0.3",
        "portal-vue": "^2.1.7",
        "postcss": "^8.1",
        "prettier": "^2.2.1",
        "qs": "^6.10.1",
        "stylelint-config-airbnb": "^0.0.0",
        "uuid": "^8.3.2",
        "vue-google-autocomplete": "^1.1.3",
        "vue-keypress": "^2.1.1",
        "vuejs-datepicker": "^1.6.2",
        "vuex": "^3.6.2",
        "zxcvbn": "^4.4.2"
    }
}
```