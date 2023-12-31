# vim

## Definition
**Vim** is a **text editor**.

**Vim** (**V**i **IM**proved) is the newer version of Vi (Visual Editor).

## Prerequisites

### Check Vim availability
Depending on the available utilities, you can use one of the bellows.

<tabs>
    <tab title="Using command">
        <code-block lang="bash">command -v vim</code-block>
    </tab>
    <tab title="Using which">
        <code-block lang="bash">which vim</code-block>        
    </tab>
</tabs>

Both commands should return the binary path if Vim is installed and none if it's not.

### Install Vim

<tabs>
    <tab title="Debian-based Linux Distros">
        <code-block lang="bash">apt install -y vim</code-block>
    </tab>
    <tab title="RPM-based Linux Distros">
        <code-block lang="bash">dnf install -y vim</code-block> 
    </tab>
</tabs>

## Hands-On

### Vim modes
When editing inside Vim, you'll be using one of the many-vim modes at a time:
1. `Normal Mode` The default one that you are in each time you open vim.
2. `Insert Mode` You can access it from Normal Mode. (See [Vim Shortcuts](#vim-shortcuts) Section)
3. `Command mode` You can access it from Normal Mode mainly by typing first the prefix `:`. (See [Vim Shortcuts](#vim-shortcuts) Section)
4. `Visual mode` You can access it from Normal Mode. (See [Vim Shortcuts](#vim-shortcuts) Section)

### Vim Shortcuts
| Shortcut                                      | Start Mode            | End Mode | Description                                                                                               |
|-----------------------------------------------|-----------------------|----------|-----------------------------------------------------------------------------------------------------------|
| `i`                                           | `Normal`              | `Insert` | Start editing from the current cursor position                                                            |
| `I`                                           | `Normal`              | `Insert` | Start editing from the start of the current line                                                          |
| `A`                                           | `Normal`              | `Insert` | Start editing from the end of the current line                                                            |
| `a`                                           | `Normal`              | `Insert` | Start editing from the current cursor position + 1 move right                                             |
| `0`                                           | `Normal`              | `Normal` | Move cursor to the start of the current line                                                              |
| `$`                                           | `Normal`              | `Normal` | Move cursor to the end of the current line                                                                |
| `gg`                                          | `Normal`              | `Normal` | Move cursor to the start of the first line                                                                |
| `G`                                           | `Normal`              | `Normal` | Move cursor to the start of the last line                                                                 |
| `X`                                           | `Normal`              | `Normal` | Remove char from cursor left                                                                              |
| `x`                                           | `Normal`              | `Normal` | Remove char from cursor right                                                                             |
| `dd`                                          | `Normal`              | `Normal` | Cut the current line                                                                                      |
| `y`                                           | `Normal`              | `Normal` | Yank/Copy selected text with visual mode help. The visual mode is cancelled automatically.                |
| `p`                                           | `Normal`              | `Normal` | Put/Paste the copied text                                                                                 |
| `u`                                           | `Normal`              | `Normal` | Undo the most recent change                                                                               |
| `(Ctrl + w) + w`                              | `Normal`              | `Normal` | Switch focus from pane to another                                                                         |
| `v`                                           | `Normal`              | `Visual` | Switch to visual mode, mainly to select a text to be yanked/copied                                        |
| `V`                                           | `Normal`              | `Visual` | Switch to visual mode with the current line selected, mainly to select a text to be yanked/copied         |
| `r <FILE_NAME>`                               | `Command`             | `Normal` | Append the specified file content to the current one                                                      |
| `w <FILE_NAME>`                               | `Command`             | `Normal` | Save Changes on the specified file, the current one if none specified. It creates the file if not exist   |
| `e <FILE_NAME>`                               | `Command`             | `Normal` | Add a buffer from the specified file. It creates the file if not exist + switch to it                     |
| `enew`                                        | `Command`             | `Normal` | Add a buffer from no file + switch to it                                                                  |
| `badd <FILE_NAME>`                            | `Command`             | `Normal` | Add a buffer from no file without switching to it                                                         |
| `bn`                                          | `Command`             | `Normal` | Switch to the next buffer                                                                                 |
| `bp `                                         | `Command`             | `Normal` | Switch to the previous buffer                                                                             |
| `[range]s/{pattern}/{string}/[flags] [count]` | `Command`             | `Normal` | The general form of the substitute                                                                        |
| `s/{pattern}/{string}/gi`                     | `Command`             | `Normal` | Substitute/Replace all 'pattern' occurrences with 'string' on each line, i fag for case ignoring          |
| `%s/{pattern}/{string}/gi`                    | `Command`             | `Normal` | Substitute/Replace only first 'pattern' occurrence with 'string' on each line, i fag for case ignoring    |
| `%{pattern}`                                  | `Command`             | `Normal` | Search for the matching text, you can type `n` to jump to the next occurrence                             |
| `[split\|sp] <FILE_NAME>`                     | `Command`             | `Normal` | Open a side editor horizontally                                                                           |
| `[vsplit\|vs] <FILE_NAME>`                    | `Command`             | `Normal` | Open a side editor vertically                                                                             |
| `set number`                                  | `Command`             | `Normal` | Display line number at the left of each line                                                              |
| `vim <FILE_NAME>`                             | (Bash)                | `Normal` | Open a file. If no file specified, an empty buffer will be added, you can name it later with `:w` command |
| `vim +<LINE_NUMBER> <FILE_NAME>`              | (Bash)                | `Normal` | Open a file and place the cursor at a specific line                                                       |
| `vim -o <FILE1_NAME> <FILE2_NAME>`            | (Bash)                | `Normal` | Open two files with horizontal split                                                                      |
| `vim -O <FILE1_NAME> <FILE2_NAME>`            | (Bash)                | `Normal` | Open two files with vertical split                                                                        |
| `esc`                                         | `Command` \| `Insert` | `Normal` | Head back to Normal Mode                                                                                  |
| `q`                                           | `Command`             | (Bash)   | Quit editor (clean file)                                                                                  |
| `q!`                                          | `Command`             | (Bash)   | Discard changes & quit                                                                                    |