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

#### Check tmux availability

###### Method 1: using `which`
```bash
which tmux
```

###### Method 2: using `command`
```bash
command -v tmux
```

By default, the package is not installed, if that's the case for you, the output will be empty,
or instead you got a message like "no tmux ...".

#### install tmux
```bash
[apt|dnf|yum|<YOUR_PACKAGE_MANAGER>] install -y tmux
```

## Tmux Sessions
To be able to work with proxmox, you should at least create one **Tmux session**.

#### List tmux sessions
```bash
tmux [list-sessions|ls]
```
with: `ls` is a shortcut for `list-sessions`.

#### Create a tmux session and go inside it
```bash
tmux
```
Tmux adopts a 0-based approach almost everywhere.
Session is one of those concepts.
So the first created session will be identified by 0.


###### Important: For all the Shortcuts bellow, make sure you run them after typing the tmux prefix key `Ctrl + b`

| Shortcut | Command                                    | Description                                              |
|----------|--------------------------------------------|----------------------------------------------------------|
| `%`      |                                            | Create a new pane with vertical split.                   |
| `"`      |                                            | Create a new pane with horizontal split.                 |
| `Arrows` |                                            | Switch between existing panes (same window).             |
| `x`      |                                            | Kill the current pane.                                   |
| `,`      |                                            | Rename the current window                                |
| `n`      |                                            | Move to the next window (same session).                  |
| `p`      |                                            | Move to the previous window (same session).              |
| `d`      |                                            | Detach from current session without killing the session. |
|          | `tmux`                                     | Create a new session.                                    |
|          | `tmux [attach\|a] -t <SESSION_ID>`         | Attach to a specific session.                            |
|          | `tmux [list-sessions\|ls] -t <SESSION_ID>` | List created sessions.                                   |
