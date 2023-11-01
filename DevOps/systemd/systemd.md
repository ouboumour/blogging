# Systemd In Linux Distros


## Definition

**Systemd** is an **init system**. It's the very first process (characterized by **PID 1**) that runs when you start up your Linux instance to manage all other processes.

Systemd can manage all other processes with the help of **unit files**. 

**Unit files** are files that we can find in three main directories bellow sorted by **priority** order.   
- /etc/systemd/system
- /run/systemd/system
- /lib/systemd/system

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

#### Restart a Service (stop and start with one command)
```bash
systemctl restart <YOUR_SERVICE_NAME>
```

#### Reload a Service (reload the process configuration files without stopping the service)
```bash
systemctl reload <YOUR_SERVICE_NAME>
```

#### Customize a Service by overriding the existing service file
```bash
systemctl edit <YOUR_SERVICE_FILE_NAME>.service
```

#### Customize a Service with a copy brand-new service file
```bash
systemctl edit --full <YOUR_SERVICE_FILE_NAME>.service
```

#### Reload systemd (Reload all unit files into memory so that they take effect)
```bash
systemctl daemon-reload
```
