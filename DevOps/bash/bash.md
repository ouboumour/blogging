# Bash Scripting

## Definition
Bash stands for **B**ourne **A**gain **SH**ell. 

Bash is a command interpreter that typically runs in a text window where the user types commands that cause actions.

Bash is a specific type of **shell**.

## Getting Started

### 1. Create a Bash Script

Open your favorite text editor (e.g., `nano`, `vim`, `gedit`, ...) and create a new file with a `.sh` extension.
For example, `myscript.sh`.

### 2. Shebang Line
Start your script with a shebang line, which tells the system to interpret the script using Bash.
```
#!/bin/bash
```

### 3. Write Your First Script
Let's start with a simple "Hello, World!" script.
```bash
#!/bin/bash
echo "Hello, World!"
```

### 4. Make the Script Executable
In the terminal, navigate to the directory containing your script and make it executable.

```bash
chmod +x myscript.sh
```

### 5. Run Your Script
Execute your script using `./` followed by the script name.

```bash
./myscript.sh
```

###### Note: 
You can also use the absolute path.