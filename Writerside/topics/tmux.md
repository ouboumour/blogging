# tmux

## Definition

**Tmux** is a **terminal multiplexer**.
**Tmux is** an alternative to **GNU Screen**.

**Tmux** allows you to create many `sessions`.
Each session can be associated with many `windows`.
Each window can be split into rectangular `panes`.
Each pane represents what we refer commonly to with a terminal.

One of the most powerful features that **tmux** offers is
that it keeps your sessions active in the background even if your ssh connection
(for example) drops.

###### Tmux's terminology & Relationships
Session `---*` Window

Window `---*` Pane

## Prerequisites

### Check tmux availability

<tabs>
    <tab title="Using command">
        <code-block lang="bash">command -v tmux</code-block>
    </tab>
    <tab title="Using which">
        <code-block lang="bash">which tmux</code-block>
    </tab>
</tabs>

By default, the package is not installed, if that's the case for you, the output will be empty,
or instead you got a message like "no tmux ...".

### install tmux
<tabs>
    <tab title="Debian-based Linux Distros">
        <code-block lang="bash">apt install -y tmux</code-block>
    </tab>
    <tab title="RPM-based Linux Distros">
        <code-block lang="bash">dnf install -y tmux</code-block> 
    </tab>
</tabs>

## Tmux hands-on

> For all the Shortcuts bellow, make sure you run them after typing the tmux prefix key `Ctrl + b`
> 
{style="warning"}

| Shortcut         | Command                                                       | Description                                                  |
|------------------|---------------------------------------------------------------|--------------------------------------------------------------|
|                  | `tmux [list-sessions\|ls]`                                    | List created sessions.                                       |
|                  | `tmux`, `tmux new -s <NEW_SESSION_NAME> -n <NEW_WINDOW_NAME>` | Create a new session.                                        |
| `$`              | `tmux rename-session <NEW_SESSION_NAME>`                      | Rename the current session.                                  |
| `s`              |                                                               | Switch quickly between sessions.                             | 
| `d`              |                                                               | Detach from current session without killing the session.     |
|                  | `tmux [attach\|a] -t <SESSION_ID>`                            | Attach to a specific session.                                |
|                  | `tmux [list-windows\|lsw]`                                    | List created windows.                                        |
| `c`              | `tmux new-window `                                            | Create a new window.                                         |
| `,`              | `tmux rename-window <NEW_WINDOW_NAME>`                        | Rename the current window.                                   |
| `n`              |                                                               | Move to the next window (same session).                      |
| `p`              |                                                               | Move to the previous window (same session).                  |
| `w`              |                                                               | Switch quickly between windows (even in different sessions). | 
|                  | `tmux [list-panes\|lsp]`                                      | List created panes.                                          |
| `%`              |                                                               | Create a new pane with vertical split.                       |
| `"`              |                                                               | Create a new pane with horizontal split.                     |
| `Arrows`         |                                                               | Switch between existing panes (same window).                 |
| `x`              |                                                               | Kill the current pane.                                       |
| `t`              |                                                               | Display time in the current pane.                            |
| `:set mouse one` |                                                               | Set mouse one make the switch between panes/windows easier.  |

> For more useful commands, take a look at:
> - [keycombiner](https://keycombiner.com/collections/tmux/).
> - [tmuxcheatsheet](https://tmuxcheatsheet.com/).
>
{style="note"}

## Tmux Customization
You can customize your tmux experience, by creating and editing the file `~/.tmux.conf`.

Below an example,
that was given in [learnlinux tmux tutorial](https://www.learnlinux.tv/learn-tmux-part-5-how-to-customize-tmux-and-make-it-your-own/).
```
# Initial setup
set -g default-terminal xterm-256color
set -g status-keys vi


# use C-j and C-f for the prefix.
set-option -g prefix C-j
set-option -g prefix2 C-f
unbind-key C-j
bind-key C-j send-prefix
set -g base-index 1


# Use Alt-arrow keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D


# Set easier window split keys
bind-key v split-window -h
bind-key h split-window -v


# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window


# Easily reorder windows with CTRL+SHIFT+Arrow
bind-key -n C-S-Left swap-window -t -1
bind-key -n C-S-Right swap-window -t +1


# Synchronize panes
bind-key y set-window-option synchronize-panes\; display-message "synchronize mode toggled."


# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded."


# Easy clear history
bind-key L clear-history


# Key bindings for copy-paste
setw -g mode-keys vi
unbind p
bind p paste-buffer
bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'y' send -X copy-selection-and-cancel


# Mouse Mode
set -g mouse on


# Lengthen the amount of time status messages are displayed
set-option -g display-time 3000
set-option -g display-panes-time 3000


# Set the base-index to 1 rather than 0
set -g base-index 1
set-window-option -g pane-base-index 1


# Automatically set window title
set-window-option -g automatic-rename on
set-option -g set-titles on


# Allow the arrow key to be used immediately after changing windows.
set-option -g repeat-time 0


# No delay for escape key press
set -sg escape-time 0


# Theme
set-window-option -g window-status-current-style bold,bg=blue,fg=colour234
set-window-option -g window-status-style fg=colour35
set -g window-status-activity-style bold,bg=colour234,fg=white
set-option -g message-style bg=colour237,fg=colour231
set-option -g pane-border-style fg=colour36
set-option -g pane-active-border-style fg=colour35


# Change background color of a tab when activity occurs
setw -g monitor-activity on


# Do NOT reset the color of the tab after activity stops occuring
setw -g monitor-silence 0


# Disable bell
setw -g monitor-bell off


# Disable visual text box when activity occurs
set -g visual-activity off


# Status Bar
set -g status-justify centre
set -g status-bg black
set -g status-fg colour35
set -g status-interval 60
set -g status-left-length 50
set -g status-left "#[bg=colour35]💻#[fg=colour234,bold] #H#[bg=colour34]#[bg=colour35,nobold]#[fg=colour234] [#S] $tmux_target_lower"
set -g status-right '#[bg=colour35] 🕔 #[fg=colour234,bold]%H:%M '
```

<note>
    <p>
        I personally prefer to keep the default config.<br/> 
        The only thing that I recommend changing though is adding the line bellow which reserves more space for the session name.
    </p>
    <code-block>set -g status-left-length 40 # could be any number</code-block>
</note>