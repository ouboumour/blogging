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

## Variables and User Input

### Variables
Use variables to store and manipulate data.
```bash
#!/bin/bash
greeting="Hello"
echo $greeting
```

### User Input
Read user input using the `read` command.
```bash
#!/bin/bash
echo "Enter your name:"
read name
echo "Hello, $name!"
```

## Conditional Statements
### If Statement
Use an `if` statement for conditional execution.
```bash
#!/bin/bash
echo "Enter a number:"
read num

if [ $num -gt 10 ]; then
  echo "The number is greater than 10."
else
  echo "The number is 10 or less."
fi
```

## Loops

###  While Loop
Use a `while` loop for repeated execution.
```bash
#!/bin/bash
count=1

while [ $count -le 5 ]; do
  echo "Count: $count"
  ((count++))
done
```

### For Loop
Use a `for` loop for iterating over a range or a list.
```bash
#!/bin/bash
for i in {1..5}; do
  echo "Number: $i"
done
```

## Functions

### Define/Declare a function
```bash
#!/bin/bash
function greet {
  echo "Hello, $1!"
}
```