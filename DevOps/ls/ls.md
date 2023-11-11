# ls

## Definition
**ls** command/utility stands for list storage.

**ls** is used to show files (directories are files) inside the current directory.

## Hands-on

#### Show file names inside the current directory
```bash
ls
```

#### Show file names inside the current directory + metadata for each
```bash
ls -l
```

| drwxrwxr-x | 2          | ouss             | ouss         | 4096      | Nov 11 22:08           | dir1      |
|------------|------------|------------------|--------------|-----------|------------------------|-----------|
| ?UUUGGGOOO | Link count | Owner user name  | Group Name   | File Size | Last Modification Date | file name |

With:

`?` : File type flag

`U` : Read, Write and execute permissions for **User**

`G` : Read, Write and execute permissions for **Group**

`O` : Read, Write and execute permissions for **Others** (everyone else)