# Systemd In Linux Distros


## Definition

**Systemd** is an init system. It's the primary first process that run first (characterized by **PID 1**) in order to manage other processes.

Systemd can manage all others processes with the help of **unit files**. 

**Unit files** are files that we can find in three main directories bellow sorted by **priority** order.   
- /etc/systemd/system
- /run/systemd/system
- /lib/systemd/system

Most common installed services like apache2 on debian based Linux distros or httpd in RPM based Linux distros are installed by default in the **/lib/systemd/system**. The remaining two directories are kept for users customization depending on their need.        

There are many types of unit files and its easy to differentiate between them thanks to to files extension:
- *.service
- *.target
- *.timer
- *.mount
- *.socket
- *.slice
- ...

## Systemclt
The most common frequently used systemd command utility is **systemclt**.

With the help of systemclt we can manage our services in a very user-friendly way.

#### Start a Service
```bash
systemctl start <YOUR_SERVICE_NAME> 
```

#### Stop a Service
```bash
systemctl stop <YOUR_SERVICE_NAME>
```

#### Enable a Service (so it starts automatically on machine reboot)
```bash
systemctl enable <YOUR_SERVICE_NAME>
```

#### Disable a Service
```bash
systemctl disable <YOUR_SERVICE_NAME>
```

#### Check a Service Status
```bash
systemctl status <YOUR_SERVICE_NAME>
```

#### Restart a Service (stop and start with one command)
```bash
systemctl restart <YOUR_SERVICE_NAME>
```

#### Reload a Service (take teh change into account without a stopping the service)
```bash
systemctl reload <YOUR_SERVICE_NAME>
```