# ufw

## Definition

**ufw** stands for **U**ncomplicated **F**ire**w**all.

**ufw** is a user-friendly command-line interface for managing iptables, the default firewall management tool in many Linux distributions. It is designed to be easy to use for beginners while still providing advanced features.

## Prerequisites

#### Check for `ufw` availability

###### Method 1: Using `command`
```bash
command -v ufw
```

###### Method 2: Using `which`
```bash
which ufw
```

By default, it's located at `/usr/sbin/ufw`.

#### Install `ufw` package
```bash
[apt|dnf|yum|<YOUR_PACKAGE_MANAGER>] install -y ufw
```

## Hands-on
#### Check ufw status
```bash
ufw status
```
This command will show you the current status and list the rules that are in place.

#### Enable the firewall

By default, ufw service is disabled.
Make sure to run both commands, since it seems systemd ufw service and ufw utility are not sync.
1. ```bash
    systemctl start ufw
   ```
2. ```bash
    ufw enable
   ```

#### Disable the firewall
```bash
ufw disable
```

#### Allow specific incoming connection
```bash
ufw allow <PORT_NUMBER>/<[tcp|udp]?>
```

#### Allow a range of ports for incoming connection
```bash
ufw allow <START_PORT_NUMBER>:<END_PORT_NUMBER>/<[tcp|udp]?>
```

#### Deny specific incoming connection
```bash
ufw deny <PORT_NUMBER>/<[tcp|udp]?>
```

#### Delete a rule
sudo ufw delete [allow|deny] <PORT_NUMBER>/<[tcp|udp]?>

#### Reload the firewall rules
```bash
ufw reload
```

#### Application Profiles
ufw also supports application profiles, making it easier to manage rules for specific services.
###### Allow a service by a profile name
```bash
ufw allow <PROFILE_NAME>
```
###### List profile names
```bash
ufw app list
```
###### Get Info about an application profile
```bash
ufw app info <PROFILE_NAME>
```

#### Policies
By default, ufw denies all incoming connections and allows all outgoing connections.
You can change these defaults if needed:
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

#### Resting policies
To reset ufw to its default state (disable and delete all rules), you can use:
```bash
ufw reset
```