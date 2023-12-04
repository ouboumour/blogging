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

#### install tmux
<tabs>
    <tab title="Debian-based Linux Distros">
        <code-block lang="bash">apt install -y tmux</code-block>
    </tab>
    <tab title="RPM-based Linux Distros">
        <code-block lang="bash">dnf install -y tmux</code-block> 
    </tab>
</tabs>
