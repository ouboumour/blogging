# Chmod

## Definition
The `chmod` command in Linux is used to change the permissions of a file or directory.

Permissions control the access level of users to files and directories.

There are three types of permissions: 
- Read (`r`)
- Write (`w`)
- Execute (`x`).

These permissions can be assigned to three entities: 
- owner
- group
- others

## Basic Syntax

```bash
chmod <OPTIONS> <PERMISSIONS> <FILE>
```

Options:
- `+`: Adds the specified permission.
- `-`: Removes the specified permission.
- `=`: Sets the specified permission and removes others.

Permissions:

- `r`: Read permission.
- `w`: Write permission.
- `x`: Execute permission.