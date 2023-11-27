# Git

## Prerequisites
### Check Availability
#### Using `command`
```bash
command -v git
```

#### Using `which`
```bash
which git
```

both should return the binary path if the package is installed, otherwise it means it's not installed.

### Install git
#### Debian-based Linux distros
```bash
apt install -y git
```

#### RPM-based Linux distros
```bash
[yum|dnf] install -y git
```

## Hands-on
### Init a git repo
```bash
Init a git repo
```

### Setup Min Config
#### Repo Scope (~/.git/config)
```bash
git config user.name "Your Name"
git config user.email "youremail@yourdomain.com"
```