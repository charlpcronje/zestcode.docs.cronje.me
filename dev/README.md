# DEV Tools

[Browser Tip (Files names not correct ".crdownload")](./crdown)
To rename all files in a directory with a specific naming convention and extension, you can use a Bash script. Here's an example script that can be used:

```bash
#!/bin/bash

# Check if the -r flag is provided for recursive renaming
if [ "$1" = "-r" ]; then
    shift
    find "$1" -type f -name '*.crdownload' -exec sh -c '
        for file; do
            newname="${file%.crdownload}"
            mv "$file" "$newname"
        done
    ' sh {} +
else
    for file in *.crdownload; do
        newname="${file%.crdownload}"
        mv "$file" "$newname"
    done
fi
```

This script checks if the `-r` flag is provided, indicating that the renaming should be done recursively. If the flag is provided, it uses the `find` command to search for files with the `.crdownload` extension and renames them by removing the extension. If the flag is not provided, it simply renames the files in the current directory.

Here's how the script works:

1. The script first checks if the `-r` flag is provided using the `if` statement.
2. If the flag is provided (`"$1" = "-r"`), the script shifts the command-line arguments to the left (`shift`) to remove the `-r` flag.
3. The script then uses the `find` command to search for files with the `.crdownload` extension in the specified directory (or the current directory if no directory is specified).
4. For each file found, the script uses a subshell and a `for` loop to iterate over the files.
5. Inside the loop, the script removes the `.crdownload` extension from the file name using the `${file%.crdownload}` parameter expansion.
6. Finally, the script uses the `mv` command to rename the file by moving it to the new name without the extension.

Note: Make sure to make the script executable using `chmod +x script.sh` before running it.

This script is a modified version of the script provided in [Source 0](https://stackoverflow.com/questions/1224766/how-do-i-rename-the-extension-for-a-bunch-of-files) on Stack Overflow. It utilizes the `find` command to perform recursive searching and renaming, and the `${file%.crdownload}` parameter expansion to remove the extension from the file name.