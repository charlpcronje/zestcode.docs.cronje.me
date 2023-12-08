# Get list of extension

In windows running VS code you can simply run the following in the command line to get the list of installed extensions 

```sh
code --list-extensions > extensions.txt
```

But in Code Server that does not work, so here is shell script that will do sort of the same

```sh
# Bash-1
# Filename: list_vscode_extensions.sh

# Bash-1-FN-1
get_installed_extensions() {
  extensions_path="~/.local/share/code-server/extensions"
  extensions=$(ls $extensions_path)
  
  echo "{ \"extensions\": [" > installed_extensions.json
  
  for extension in $extensions; do
    echo "\"$extension\"," >> installed_extensions.json
  done
  
  # Remove the trailing comma and close the JSON array and object
  sed -i '$ s/,$/]/' installed_extensions.json
  echo "}" >> installed_extensions.json
}

# Bash-1-FN-2
get_installed_extensions

```


