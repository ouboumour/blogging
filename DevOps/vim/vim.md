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

### Vim modes
When editing inside Vim, you'll be using one of the three-vim modes at a time:
1. `Normal Mode` The default one that you are in each time you open vim.
2. `Insert Mode` You can access it from Normal Mode (See [Vim Shortcuts](#vim-shortcuts) Section)
3. `Command mode` You can access it from Normal Mode by typing first the prefix `:`(See [Vim Shortcuts](#vim-shortcuts) Section)

### Vim Shortcuts
| Shortcut | Start Mode | End Mode | Description                                                   |
|----------|------------|----------|---------------------------------------------------------------|
| `i`      | Normal     | Insert   | Start editing from the current cursor position                |
| `a`      | Normal     | Insert   | Start editing from the current cursor position + 1 move right |
| `A`      | Normal     | Insert   | Start editing from teh end of the current line                |
| `w`      | Command    | (Bash)   | Save Changes                                                  |
| `q`      | Command    | (Bash)   | Quit editor (clean file)                                      |
| `q!`     | Command    | (Bash)   | Discard changes & quit                                        |
