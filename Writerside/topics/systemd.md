# Systemd

## Definition

**Systemd** is an **init system**. It's the very first process (characterized by **PID 1**) that runs when you start up your Linux instance to manage all other processes.

Systemd can manage all other processes with the help of **unit files**.

**Unit files** are files that we can find in three main directories bellow sorted by **priority** order.
1. /etc/systemd/system
2. /run/systemd/system
3. /lib/systemd/system

Most common installed services like apache2 on debian based Linux distros or httpd in RPM-based Linux distros are installed by default in the **/lib/systemd/system**.
The remaining two directories are kept for users' customization depending on their need.

There are many types of unit files, and it's easy to differentiate between them thanks to the file extension:
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

#### Enable a Service (so it starts automatically on Linux instance start)
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
