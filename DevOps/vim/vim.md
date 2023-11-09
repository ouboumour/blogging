# VIM

## Definition
**Vim** is a **text editor**.

**Vim** (Vi Improved) is the newer version of Vi (Visual Editor).

## Prerequisites

### Check Vim availability
Depending on the available utilities, you can use one of the bellows.
###### Method 1: using `command -v`
```bash
command -v vim
```
###### Method 2: using `which`
```bash
which vim
```
Both commands should return the binary path if Vim is installed and none if it's not.

### Install Vim
###### Debian-based Distros
```bash
apt install vim
```
###### RPM-based Distros 
```bash
[dnf|yum] install vim 
```

## Hands-On

| Shortcut | Start Mode | End Mode | Description                                                    |
|----------|------------|----------|----------------------------------------------------------------|
| `q`      | Command    | (Bash)   | Quit editor (clean file)                                       |
| `w`      | Command    | (Bash)   | Save Changes                                                   |
| `w!`     | Command    | (Bash)   | Discard changes & quit                                         |
| `i`      | Normal     | Insert   | Start editing from the current cursor position                 |
| `a`      | Normal     | Insert   | Start editing from the current cursor position + 1 move right  |
| `A`      | Normal     | Insert   | Start editing from end current line                            |