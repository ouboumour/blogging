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
