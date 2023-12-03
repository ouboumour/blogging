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
