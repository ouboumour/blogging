# Lsof

## Definition
The `lsof` command stands for `list open files`.

It is a powerful tool for displaying information about files that are currently open on a Unix-like system. 

In Unix and Linux systems, everything is considered a file, including regular files, directories, sockets, pipes, and devices. The lsof command helps you to see which processes have opened which files, sockets, or network connections.

## Basic Syntax
The basic syntax of the lsof command is as follows:
```bash
lsof [options]
```
#### Common Options:

- `-i`: Lists open Internet sockets.
- `-p`: Specifies a process ID.
- `-u`: Lists files for a specific user.
- `-c`: Lists files for a specific command.
- `-t`: Outputs only the process IDs.
- `-F`: Specifies the output format.

## Hands-on

#### List All Open Files
```bash
lsof
```
This command will display information about all open files on the system.

#### List Files for a Specific Process
```bash
lsof -p <PID>
```

#### List Internet Sockets
```bash
lsof -i
```

#### List open Files for a specific User
```bash
lsof -u <username>
```

#### List Files for a Specific Command
```bash
lsof -c <command>
```

#### List Process IDs Only
```bash
lsof -t
```

#### List Process IDs for a listening port
```bash
lsof -t -i:<PORT_NUMBER>
```