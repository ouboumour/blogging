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
#### Show file names inside a target path + metadata for each
```bash
ls -l <TARGET_PATH>
```

| drwxrwxr-x | 2          | ouss             | ouss         | 4096      | Nov 11 22:08           | dir1      |
|------------|------------|------------------|--------------|-----------|------------------------|-----------|
| ?UUUGGGOOO | Link count | Owner user name  | Group Name   | File Size | Last Modification Date | file name |

With:

`?` : File type flag. `d` for directory, `-` for a file.

`U` : Read, Write and execute permissions for **User**

`G` : Read, Write and execute permissions for **Group**

`O` : Read, Write and execute permissions for **Others** (everyone else)

#### Show hidden files
```bash
ls -a <TARGET_PATH>
```