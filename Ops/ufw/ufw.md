# ufw

## Definition

**ufw** stands for **U**ncomplicated **F**ire**w**all.

**ufw** is a user-friendly command-line interface for managing iptables, the default firewall management tool in many Linux distributions. It is designed to be easy to use for beginners while still providing advanced features.

## Prerequisites

#### Check for `ufw` availability

###### Method 1: Using `command`
```bash
command -v ufw
```

###### Method 2: Using `which`
```bash
which ufw
```

By default, it's located at `/usr/sbin/ufw`.