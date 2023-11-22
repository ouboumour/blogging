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

## Hands-on

#### Adding Permissions
1. To add permissions for the owner
    ```bash
    chmod u+[r|w|x] <FILENAME>
    ```

2. To add permissions for the group
    ```bash
    chmod g+[r|w|x] <FILENAME>
    ```

3. To add permissions for the others
    ```bash
    chmod o+[r|w|x] <FILENAME>
    ```

4. To add permissions for all at once
   1. Add diff permissions for different groups
      ```bash
       chmod u[r|w|x],g[r|w|x],o[r|w|x] <FILENAME>
       ```
   2. Add same permissions for different groups 
      ```bash
       chmod ugo+[r|w|x] <FILENAME>
       ```
       OR 
       ```bash
       chmod +[r|w|x] <FILENAME> 
      ```
      To be fair, this last command result depends on the `umask` value (usually set to the value `0002`.
      If that's the case for you, the command will not set write permissions for others. More explanation [here](https://unix.stackexchange.com/questions/429421/why-does-chmod-w-not-give-write-permission-to-othero).
       So yeah, to make it simpler for you, I do going with the command that comes just before by adding the `ugo` part.

#### Removing Permissions

```bash
chmod [u|g|o]-[r|w|x] <FILENAME> 
```

#### Setting exact Permissions
1. Using the `=` sign
   ```bash
   chmod [u|g|o]=[r|w|x] <FILENAME> 
   ```