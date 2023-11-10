# VIM

## Definition
**Vim** is a **text editor**.

**Vim** (**V**i **IM**proved) is the newer version of Vi (Visual Editor).

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
When editing inside Vim, you'll be using one of the many-vim modes at a time:
1. ``Normal` Mode` The default one that you are in each time you open vim.
2. `Insert Mode` You can access it from Normal Mode. (See [Vim Shortcuts](#vim-shortcuts) Section)
3. `Command mode` You can access it from Normal Mode by typing first the prefix `:`. (See [Vim Shortcuts](#vim-shortcuts) Section)
4. `Visual mode` You can access it from Normal Mode. (See [Vim Shortcuts](#vim-shortcuts) Section)

### Vim Shortcuts
| Shortcut                   | Start Mode            | End Mode | Description                                                                                             |
|----------------------------|-----------------------|----------|---------------------------------------------------------------------------------------------------------|
| `i`                        | `Normal`              | `Insert` | Start editing from the current cursor position                                                          |
| `I`                        | `Normal`              | `Insert` | Start editing from the start of the current line                                                        |
| `A`                        | `Normal`              | `Insert` | Start editing from the end of the current line                                                          |
| `a`                        | `Normal`              | `Insert` | Start editing from the current cursor position + 1 move right                                           |
| `0`                        | `Normal`              | `Normal` | Move cursor to the start of the current line                                                            |
| `$`                        | `Normal`              | `Normal` | Move cursor to the end of the current line                                                              |
| `gg`                       | `Normal`              | `Normal` | Move cursor to the start of the first line                                                              |
| `G`                        | `Normal`              | `Normal` | Move cursor to the start of the last line                                                               |
| `X`                        | `Normal`              | `Normal` | Remove char from cursor left                                                                            |
| `x`                        | `Normal`              | `Normal` | Remove char from cursor right                                                                           |
| `dd`                       | `Normal`              | `Normal` | Cut the current line                                                                                    |
| `u`                        | `Normal`              | `Normal` | Undo the most recent change                                                                             |
| `(Ctrl + w) + w`           | `Normal`              | `Normal` | Switch focus from pane to another                                                                       |
| `r <FILE_NAME>`            | `Command`             | `Normal` | Append the specified file content to the current one                                                    |
| `w <FILE_NAME>`            | `Command`             | `Normal` | Save Changes on the specified file, the current one if none specified. It creates the file if not exist |
| `esc`                      | `Command` \| `Insert` | `Normal` | Head back to Normal Mode                                                                                |
| `[split\|sp] <FILE_NAME>`  | `Command`             | `Normal` | Open a side editor horizontally                                                                         |
| `[vsplit\|vs] <FILE_NAME>` | `Command`             | `Normal` | Open a side editor vertically                                                                           |
| `q`                        | `Command`             | (Bash)   | Quit editor (clean file)                                                                                |
| `q!`                       | `Command`             | (Bash)   | Discard changes & quit                                                                                  |
