# SCP (Secure Copy Protocol)

## Definition
**SCP** stands for **S**ecure **C**opy **P**rotocol.

**SCP** is a **file transfer network protocol**.

**SCP** uses the SSH protocol to copy directories and files securely between two different machines on a network.

## Prerequisites

#### Check if the scp utility is available

###### Method 1: using `which` utility
```bash 
which scp
```
###### Method 2: using `command` utility
```bash 
command -v scp
```
Both should return the utility absolute path, usually located at **/usr/bin/scp**.

#### Check the ssh connection
Since scp uses the SSH protocol behind the scenes,
you should make sure you can ssh the target machine before going any further.
```bash
ssh -p <PORT_NUMBER> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>
```

#### Check the target directory permissions
Make sure you have the read/write permissions regrading the target directory.

## Copy directories/files using scp

### Copy a file 

#### Copy a file from local to a remote machine
```bash
scp -P <PORT_NUMBER> <LOCAL_FILE_PATH> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> 
```

###### Note 1:
If you leave the remote server directory path empty,
the file will be copied to the target machine's home directory but don't get rid of the **:** sign though.

###### Note 2:
If it happens
that the local machine username matches the remote machine username, you can omit
passing the last one as an argument
but get rid of the **@** though.


###### Note 3:
The default ssh port is 22.

So as a final result, if all of those conditions are satisfied, you can simplify the commandline as bellow.
```bash
scp <LOCAL_FILE_PATH> <REMOTE_SERVER_IP_ADDRESS>
```

#### Copy a file from a remote to local machine
It is possible to reverse the order
to be able to fetch a directory/file from the server and download it to your local machine.

```bash
scp -P <PORT_NUMBER> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> <LOCAL_FILE_PATH>
```

### Copy a directory
```bash
scp -P <PORT_NUMBER> -rp <LOCAL_DIRECTORY_PATH> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> 
```
With:

**-r** option to copy a directory content recursively.

**-p** option to retain files modification datetime.