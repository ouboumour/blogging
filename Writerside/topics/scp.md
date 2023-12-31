# scp

## Definition
**SCP** stands for **S**ecure **C**opy **P**rotocol.

**SCP** is a **file transfer network protocol**.

**SCP** uses the SSH protocol to copy directories and files securely between two different machines on a network.

## Prerequisites

#### Check if the scp utility is available

<tabs>
    <tab title="Using command">
        <code-block lang="bash">command -v scp</code-block>
    </tab>
    <tab title="Using which">
        <code-block lang="bash">which scp</code-block>
    </tab>
</tabs>

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

> If you leave the remote server directory path empty,
the file will be copied to the target machine's home directory but don't get rid of the **:** sign though.

>If it happens
that the local machine username matches the remote machine username, you can omit
passing the last one as an argument
but get rid of the **@** though.


> The default ssh port is 22.
>
{style="note"}

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

**-r**: to copy a directory content recursively.

**-p**: to retain files modification datetime.