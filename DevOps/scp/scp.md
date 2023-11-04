# SCP (Secure Copy Protocol)

## Definition
**SCP** stands for **S**ecure **C**opy **P**rotocol.

**SCP** is a **file transfer network protocol**.

**SCP** uses the SSH protocol to copy directories and files securely between two different machines on a network.

## Prerequisites

#### Check if the scp utility is available
```bash 
which scp
```

#### Check the ssh connection
Since scp uses behind the scenes, the ssh protocol, make sure you can ssh the target machine before going any further.
```bash
ssh -p <PORT_NUMBER> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>
```

## Copy directories/files using scp

### Copy a file 

#### Copy a file from local to a remote machine
```bash
scp <LOCAL_FILE_PATH> <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> 
```

###### Note 1:
If you leave the remote server directory path empty,
the file will be copied to the target machine's home directory but don't get rid of the **:** sign though.

###### Note 2:
If it happens
that the local machine username matches the remote machine username, you can omit
passing the last one as an argument
but get rid of the **@** though.

So as a final result, if the two conditions are satisfied, you can simplify the commandline as bellow.
```bash
scp <LOCAL_FILE_PATH> <REMOTE_SERVER_IP_ADDRESS>
```

#### Copy a file from a remote to local machine
It is possible to reverse the order
to be able to fetch a directory/file from the server and download it to your local machine.

```bash
scp <REMOTE_SERVER_USERNAME>@<REMOTE_SERVER_IP_ADDRESS>:<REMOTE_SERVER_DIRECTORY_PATH> <LOCAL_FILE_PATH>
```