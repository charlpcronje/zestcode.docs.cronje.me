# Possible Issues
## Possible issues with vue-loader

```sh
ERROR in ./resources/js/components/AccountSettings.vue
Module build failed (from ./node_modules/vue-loader/dist/index.js):
TypeError: Cannot read properties of undefined (reading 'styles')
    at Object.loader (\www\lp\node_modules\vue-loader\dist\index.js:95:34)
```

This error is usually not because of any package thats missing or a wrong version, easiest way is to delete the `node_modules` folder and the `yarn.lock` file `package.json.lock` if you're using `npm` file

## Issues with SSH keys and permissions:

Error Message

```txt
This warning message indicates that the SSH client has encountered several issues related to the private key file and its permissions. Here's the breakdown of the message:

"@ WARNING: UNPROTECTED PRIVATE KEY FILE! @": This line indicates that the private key file (id_rsa) has weak permissions, making it accessible to others. It is crucial to protect your private key file and ensure that only authorized users can access it.

"Permissions for '~/.ssh/id_rsa' are too open.": This line specifically states that the permissions set for the private key file (id_rsa) are too permissive, meaning that it can be accessed by others. Proper permissions should restrict access to the owner only.

"This private key will be ignored.": Since the private key file has weak permissions, it cannot be used for authentication, and therefore it is being ignored.

"Load key "~/.ssh/id_rsa": bad permissions": This line reiterates that the private key file cannot be loaded due to its incorrect permissions.

"git@github.com: Permission denied (publickey).": This error message indicates that the SSH authentication using the private key failed, resulting in permission denial when trying to access the remote repository on GitHub.

"fatal: Could not read from remote repository.": This error message indicates that the SSH client could not read from the remote repository, which is likely due to the failed authentication.
```

To fix this error run this command

```sh
// Run this in git bash becasue ~ is not available in cmd
icacls "~\.ssh\id_rsa" /inheritance:r /grant:r "%USERNAME%":F
```