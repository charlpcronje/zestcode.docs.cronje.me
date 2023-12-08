# Updades to NPM Modules

I get the following warinings when installing `laravel mix` to generate the manifest mix file:

```sh
1. warning " > @tailwindcss/jit@0.1.18" has incorrect peer dependency "tailwindcss@^2.0.3".
2. warning " > @tailwindcss/typography@0.4.0" has incorrect peer dependency "tailwindcss@2.0.0-alpha.24 || ^2.0.0".
3. warning " > eslint-config-airbnb@18.2.1" has unmet peer dependency "eslint-plugin-import@^2.22.1".
warning " > eslint-config-airbnb@18.2.1" has unmet peer dependency "eslint-plugin-jsx-a11y@^6.4.1".
warning " > eslint-config-airbnb@18.2.1" has unmet peer dependency "eslint-plugin-react@^7.21.5".
warning " > eslint-config-airbnb@18.2.1" has unmet peer dependency "eslint-plugin-react-hooks@^4 || ^3 || ^2.3.0 || ^1.7.0".
warning "eslint-config-airbnb > eslint-config-airbnb-base@14.2.1" has unmet peer dependency "eslint-plugin-import@^2.22.1".
warning " > stylelint-config-airbnb@0.0.0" has unmet peer dependency "stylelint@^8.0.0".
warning " > stylelint-config-airbnb@0.0.0" has unmet peer dependency "stylelint-order@^0.7.0".
warning " > stylelint-config-airbnb@0.0.0" has unmet peer dependency "stylelint-scss@^1.2.1".
warning " > laravel-mix@6.0.49" has unmet peer dependency "@babel/plugin-proposal-object-rest-spread@^7.15.6".
warning " > laravel-mix@6.0.49" has unmet peer dependency "@babel/plugin-syntax-dynamic-import@^7.8.3".
warning " > laravel-mix@6.0.49" has unmet peer dependency "@babel/plugin-transform-runtime@^7.15.8".
warning " > laravel-mix@6.0.49" has unmet peer dependency "@babel/preset-env@^7.15.8".
warning " > laravel-mix@6.0.49" has incorrect peer dependency "postcss@^8.3.11".
warning " > laravel-mix@6.0.49" has unmet peer dependency "webpack@^5.60.0".
warning " > laravel-mix@6.0.49" has unmet peer dependency "webpack-cli@^4.9.1".
warning "laravel-mix > cssnano@5.1.15" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default@5.2.14" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > cssnano-utils@3.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-colormin@5.3.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-convert-values@5.1.3" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-discard-comments@5.1.2" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-discard-duplicates@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-discard-empty@5.1.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-discard-overridden@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-merge-longhand@5.1.7" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-merge-rules@5.1.4" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-minify-font-values@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-minify-gradients@5.1.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-minify-params@5.1.4" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-minify-selectors@5.2.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-charset@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-display-values@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-positions@5.1.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-repeat-style@5.1.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-string@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-timing-functions@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-unicode@5.1.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-url@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-normalize-whitespace@5.1.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-ordered-values@5.1.3" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-reduce-initial@5.1.2" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-reduce-transforms@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-svgo@5.1.0" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-unique-selectors@5.1.1" has incorrect peer dependency "postcss@^8.2.15".
warning "laravel-mix > cssnano > cssnano-preset-default > postcss-merge-longhand > stylehacks@5.1.1" has incorrect peer dependency "postcss@^8.2.15".
warning " > sass-loader@8.0.2" has unmet peer dependency "webpack@^4.36.0 || ^5.0.0".
warning " > svg-spritemap-webpack-plugin@3.9.1" has unmet peer dependency "webpack@^4.0.0 || ^5.0.0".
warning " > vue-loader@15.9.6" has unmet peer dependency "css-loader@*".
warning " > vue-loader@15.9.6" has unmet peer dependency "webpack@^3.0.0 || ^4.1.0 || ^5.0.0-0".
```

## 1. warning " > @tailwindcss/jit@0.1.18" has incorrect peer dependency "tailwindcss@^2.0.3".
The warning message ` > @tailwindcss/jit@0.1.18` has incorrect peer dependency `tailwindcss@^2.0.3` indicates that the `@tailwindcss/jit` package you're using in your project expects a version of `tailwindcss` that is `2.0.3` or higher.

The `@tailwindcss/jit` package is a just-in-time (`JIT`) compiler for Tailwind CSS, which was merged into the core Tailwind CSS repository since version 2.1 [3].

Here's how you can resolve this warning:

Upgrade `Tailwind CSS`: If you're using a version of tailwindcss that is lower than `2.0.3`, upgrade
it to a newer version. You can do this using the following command:

```sh
npm install tailwindcss@latest --save-dev
```
or with yarn:

```sh
yarn add tailwindcss@latest --dev
```

Replace `@tailwindcss/jit` with `tailwindcss`: If you're using Tailwind CSS version 2.1 or higher, you can replace `@tailwindcss/jit` with tailwindcss in your tailwind.config.js file. The JIT mode is now built into tailwindcss, so you no longer need the separate `@tailwindcss/jit` package 
In your tailwind.config.js file, change:

```js
module.exports = {
  mode: '@tailwindcss/jit',
  // ...
}
```
to:

```js
module.exports = {
  mode: 'jit',
  // ...
}
```

> Reinstall Your Dependencies: After making changes, reinstall your dependencies using npm install or yarn.

### 1.1. I still get warning " > @tailwindcss/jit@0.1.18" has incorrect peer dependency "tailwindcss@^2.0.3" even after installing tailwindcss latest

The warning message `" > @tailwindcss/jit@0.1.18" has incorrect peer dependency "tailwindcss@^2.0.3"` means that the `@tailwindcss/jit` package expects a version of `tailwindcss` that is 2.0.3 or higher.

However, as of Tailwind CSS v2.1, the `@tailwindcss/jit` package has been merged into the core Tailwind CSS project [\[2\]](https://github.com/tailwindlabs/tailwindcss-jit). This means you should be able to use Tailwind CSS without separately installing `@tailwindcss/jit`.

Here's how you can resolve this warning:

1.1.1. **Remove `@tailwindcss/jit`**: Since `@tailwindcss/jit` is now part of `tailwindcss`, you can remove it from your project. Use the following command to uninstall `@tailwindcss/jit`:

```sh
npm uninstall @tailwindcss/jit` 
```

or with `yarn`:

```sh
yarn remove @tailwindcss/jit` 
```

1.1.2. **Replace `@tailwindcss/jit` with `tailwindcss` in PostCSS configuration**: If you're using PostCSS, replace `@tailwindcss/jit` with `tailwindcss` in your PostCSS configuration. It should look like this:

```js
// postcss.config.js 
module.exports = {  
    plugins: {  
        tailwindcss: {},  
        autoprefixer: {},  
        }
    }
```

I did not locate a `postcss.config.js`, so if you don't have a `postcss.config.js` file in your project, you don't need to worry about it. The `JIT` mode can be enabled directly in your `tailwind.config.js` file.

1.1.3. **Enable JIT mode in Tailwind CSS configuration**: You can enable the JIT mode by adding `mode: 'jit'` in your Tailwind CSS configuration (`tailwind.config.js`). It should look like this:

```js
// tailwind.config.js 
module.exports = {  
    mode: 'jit',  // This is where jit is enabled

    // In laravel projects the blade templates gets rendered to .resources so you can add the following to the purge array (This array specifies the location in which tailwindcss should look for files)
    purge: [
        // add the folling for laravel projects
        './resources/**/*.blade.php',
        './resources/**/*.js', 
        './resources/**/*.vue'
        
        // add the following for all projects if you are using a public or src folder
        './public/**/*.html',       
        './src/**/*.{js,jsx,ts,tsx,vue}'
    ],  
    theme: {  
        // ...  
    } 
}
```
When I was updating the 

1.1.4. **Reinstall your dependencies**: After making these changes, reinstall your dependencies using `npm install` or `yarn`.

After making these changes, the warning should no longer appear. If you're still having issues, make sure your `tailwindcss` version is up-to-date and that you've correctly configured Tailwind CSS in your project [https://tailwindcss.com/docs/installation/using-postcss](https://tailwindcss.com/docs/installation/using-postcss) [https://v2.tailwindcss.com/docs/just-in-time-mode](https://v2.tailwindcss.com/docs/just-in-time-mode) [https://tailwindcss.com/docs/guides/adonisjs](https://tailwindcss.com/docs/guides/adonisjs).


## 2. warning " > @tailwindcss/typography@0.4.0" has incorrect peer dependency "tailwindcss@2.0.0-alpha.24 || ^2.0.0".

The warning `" > @tailwindcss/typography@0.4.0" has incorrect peer dependency "tailwindcss@2.0.0-alpha.24 || ^2.0.0"` indicates that the version of `tailwindcss` currently installed in your project is not compatible with the `@tailwindcss/typography` package. Specifically, `@tailwindcss/typography` requires a version of `tailwindcss` that is 2.0.0-alpha.24 or higher.

Here are some steps you can take to resolve this warning:

2.1. **Check your current `tailwindcss` version**: You can check the current version of `tailwindcss` installed in your project by running `npm list tailwindcss` or `yarn list --pattern tailwindcss`. This will help you determine if you need to upgrade or downgrade `tailwindcss` to meet the peer dependency requirements of `@tailwindcss/typography`.

2.2. **Upgrade `tailwindcss`**: If your current version of `tailwindcss` is lower than 2.0.0-alpha.24, you should upgrade it using the following command:

```sh
npm install tailwindcss@latest --save-dev
```

or with `yarn`:

```sh
yarn add tailwindcss@latest --dev 
```

This will install the latest version of `tailwindcss` which would be compatible with `@tailwindcss/typography@0.4.0` [\[6\]](https://github.com/tailwindlabs/tailwindui-issues/issues/456) [\[8\]](https://tailwindcss.com/docs/typography-plugin).

2.3. **Reinstall your dependencies**: After updating `tailwindcss`, reinstall your dependencies using `npm install` or `yarn`. This will ensure that all dependencies are correctly installed with their required peer dependencies.

2.4. **Check your Tailwind CSS configuration**: Make sure your `tailwind.config.js` file is correctly configured. If you're still experiencing issues, refer to the [Tailwind CSS documentation](https://tailwindcss.com/docs) for more information on how to configure and use Tailwind CSS [\[8\]](https://tailwindcss.com/docs/typography-plugin) [\[13\]](https://github.com/tailwindlabs/tailwindcss/issues/6521).

Remember to check your build and make sure everything is still working as expected after making these changes. If you encounter issues, you might need to clear your `node_modules` folder and `package-lock.json` or `yarn.lock` file and reinstall your dependencies [\[10\]](https://weekendprojects.dev/posts/fix-for-npm-conflicting-peer-dependency-error/). This can often resolve issues caused by incomplete or corrupted dependency installations.

## 3. warning " > @tailwindcss/typography@0.4.0" has incorrect peer dependency "tailwindcss@2.0.0-alpha.24 || ^2.0.0".

The warning message you are seeing indicates that the version of the `@tailwindcss/typography` package you are trying to install has an incorrect peer dependency on `tailwindcss@2.0.0-alpha.24` or higher. However, you are using a different version of Tailwind CSS (`v2.0.2`), which is causing the warning to appear. To resolve this issue, you can try the following solutions:

1. Use Yarn instead of npm: One user on Stack Overflow reported that they were able to solve the same problem by using Yarn instead of npm to install the dependencies. You can try running the following command with Yarn to see if it resolves the warning:

```sh
yarn add tailwindcss postcss-cli autoprefixer -D
```

## 4. the Warnings about eslint and Airbnb Config
warning " > eslint-config-airbnb@18.2.1" has unmet peer dependency "eslint-plugin-import@^2.22.1". warning " > eslint-config-airbnb@18.2.1" has unmet peer dependency "eslint-plugin-jsx-a11y@^6.4.1". warning " > eslint-config-airbnb@18.2.1" has unmet peer dependency "eslint-plugin-react@^7.21.5". warning " > eslint-config-airbnb@18.2.1" has unmet peer dependency "eslint-plugin-react-hooks@^4 || ^3 || ^2.3.0 || ^1.7

The warning message you are seeing indicates that the version of `eslint-config-airbnb` you are trying to install has unmet peer dependencies on `eslint-plugin-import`, `eslint-plugin-jsx-a11y`, `eslint-plugin-react`, and `eslint-plugin-react-hooks`. These peer dependencies are required for the `eslint-config-airbnb` package to work correctly. To resolve this issue, you can try the following steps:

1. Check your npm version: One user on GitHub reported that upgrading their npm version resolved the peer dependency warning. You can try upgrading npm by running the following command:

```sh
npm install -g npm@latest
```
[github.com](https://github.com/import-js/eslint-plugin-import/issues/190)

2. Use `install-peerdeps` to install peer dependencies: Another user on GitHub suggested using the `install-peerdeps` package to install the peer dependencies of `eslint-config-airbnb`. You can install `install-peerdeps` globally by running the following command:

```sh
npm install -g install-peerdeps
```

Once `install-peerdeps` is installed, you can use it to install the peer dependencies of `eslint-config-airbnb` by running the following command in the directory of your project:

```sh
install-peerdeps --dev eslint-config-airbnb
```

[github.com](https://github.com/airbnb/javascript/issues/1283)

3. Manually install the required peer dependencies: If the above steps don't work, you can try manually installing the required peer dependencies. You can install each peer dependency individually using the `npm install` command. For example:

 ```sh
npm install eslint-plugin-import@^2.22.1 --save-dev 
npm install eslint-plugin-jsx-a11y@^6.4.1 --save-dev 
npm install eslint-plugin-react@^7.21.5 --save-dev
npm install eslint-plugin-react-hooks@^4 --save-dev
```
or yarn

```sh
yarn add eslint-plugin-import@^2.22.1 --dev
yarn add eslint-plugin-jsx-a11y@^6.4.1 --dev
yarn add eslint-plugin-react@^7.21.5 --dev
yarn add eslint-plugin-react-hooks@^4 --dev
```

After installing the peer dependencies, you can try installing `eslint-config-airbnb` again.

[npmpeer.dev](https://www.npmpeer.dev/packages/eslint-config-airbnb/compatibility)

If none of these solutions work, make sure to check the compatibility requirements of the `eslint-config-airbnb` package and its peer dependencies. You can refer to the documentation and GitHub repository of `eslint-config-airbnb` for more information on version compatibility and troubleshooting. Additionally, you can seek assistance from the ESLint community or support channels for further guidance.

