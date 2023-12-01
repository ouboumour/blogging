# ls

## Definition
**ls** command/utility stands for list storage.

**ls** is used to show files (directories are files) inside the current directory.

## Hands-on

#### Show file names inside a target path
```bash
ls <TARGET_PATH>
```
By default, the ls output is alphabetically ordered.

#### Show file names inside a target path + metadata for each
```bash
ls -l <TARGET_PATH>
```
| ~UUUGGGOOO | Link count | Owner user name  | Group Name   | File Size | Last Modification Date | file name |
|------------|------------|------------------|--------------|-----------|------------------------|-----------|
| drwxrwxr-x | 2          | ouss             | ouss         | 4096      | Nov 11 22:08           | dir1      |

With:

`~` : File type flag. `d` for directory, `-` for a file.

`U` : Read, Write and execute permissions for **User**

`G` : Read, Write and execute permissions for **Group**

`O` : Read, Write and execute permissions for **Others** (everyone else)

#### Show hidden files
```bash
ls -a <TARGET_PATH>
```

#### Sort files by Last Modification Date

###### Most recent to oldest
```bash
ls -t <TARGET_PATH>
```

###### Oldest to most recent
```bash
ls -tr <TARGET_PATH>
```

#### ls colors meaning
On most used Linux distros, if not all of them, the ls command that we run is not the binary itself.
It's actually an alias that you can show its value by running the command.
```bash
alias ls
```
The output will look like follow : `alias ls='ls --color=auto'`.
Which means
it's the ls alias
that runs behind the scenes the ls binary with color option to make sure we got colored output depending on the files
(including directories) types.

Below the list of colors displayed by the ls command, with the meaning of each:

- `Blue`: Directory or folders
- `Green`: Executable or recognized data file
- `Cyan` or `Sky Blue`: Symbolic link file
- `Yellow with a black background`: Device
- `Magenta` or `Pink`: Graphic image file
- `Red`: Archive file
- `Red with a black background`: Broken link

#### Explore Aliases
Since we talked about ls-aliases.
There are more useful ones.
The alias value may not be consistent depending on the Linux used Distro.

To show all ls-aliases, you can run the command bellow
```bash
alias | grep ls
```

Bellow the output of the command executed against my ubuntu instance.

```
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
```

#### Add Custom Aliases
You can add your custom aliases, by adding your commands to the `~/bashrc` file.
That way, you will not lose your created aliases once you close your session.
