# ufw

## Definition

**ufw** stands for **U**ncomplicated **F**ire**w**all.

**ufw** is a user-friendly command-line interface for managing iptables, the default firewall management tool in many Linux distributions. It is designed to be easy to use for beginners while still providing advanced features.

## Prerequisites

### Check for `ufw` availability

<tabs>
    <tab title="Using command">
        <code-block lang="bash">command -v ufw</code-block>
    </tab>
    <tab title="Using which">
        <code-block lang="bash">which ufw</code-block>        
    </tab>
</tabs>

By default, it's located at `/usr/sbin/ufw`.

### Install `ufw` package
<tabs>
    <tab title="Debian-based Linux Distros">
        <code-block lang="bash">apt install -y ufw</code-block>
    </tab>
    <tab title="RPM-based Linux Distros">
        <code-block lang="bash">dnf install -y ufw</code-block>
    </tab>
</tabs>

## Hands-on
### Check ufw status
```bash
ufw status
```
This command will show you the current status and list the rules that are in place.

### Enable the firewall

By default, ufw service is disabled.
Make sure to run both commands, since it seems systemd ufw service and ufw utility are not sync.
1. Start the ufw service
    ```bash
    systemctl start ufw
    ```
2. enable the firewall
    ```bash
    ufw enable
    ```

### Disable the firewall
```bash
ufw disable
```

### Allow specific incoming connection
```bash
ufw allow <PORT_NUMBER>/<[tcp|udp]?>
```

### Allow a range of ports for incoming connection
```bash
ufw allow <START_PORT_NUMBER>:<END_PORT_NUMBER>/<[tcp|udp]?>
```

### Allow specific incoming connection from a specific ip address
```bash
ufw allow from <IP_ADDRESS> to any port <PORT_NUMBER> proto <[tcp|udp]>
```

### Deny specific incoming connection
```bash
ufw deny <PORT_NUMBER>/<[tcp|udp]?>
```

### Delete a rule by the rule itself
```bash
ufw delete [allow|deny] <PORT_NUMBER>/<[tcp|udp]?>
```

### Delete a rule by the rule number
First, to get the rule number, run the command bellow.
```bash
ufw status numbered
```
Delete the rule by its number.
```bash
ufw delete <RULE_NUMBER>
```

### Reload the firewall rules
```bash
ufw reload
```

### Application Profiles
ufw also supports application profiles, making it easier to manage rules for specific services.
#### Allow a service by a profile name
```bash
ufw allow <PROFILE_NAME>
```
#### List profile names
```bash
ufw app list
```
#### Get Info about an application profile
```bash
ufw app info <PROFILE_NAME>
```

### Policies
By default, ufw denies all incoming connections and allows all outgoing connections.
You can change these defaults if needed:
```bash
ufw default deny incoming
ufw default allow outgoing
```

### Resetting policies
To reset ufw to its default state (disable and delete all rules), you can use:
```bash
ufw reset
```