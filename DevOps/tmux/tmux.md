# tmux

## Definition

**Tmux** is a **terminal multiplexer**.
**Tmux is** an alternative to **GNU Screen**.

Tmux allows you to create many **sessions**. Each session can be associated to many **windows**. Each window can be split into rectangular **panes**. Each pane represents what we refer commonly to with a terminal.

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

By default, the package is not installed, if that's the case for you, the output will be empty.