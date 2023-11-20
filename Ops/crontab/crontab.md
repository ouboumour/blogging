# Cron

## Definition
Cron is a time-based job scheduler in Unix-like operating systems, including Linux. It allows you to schedule tasks to run automatically at specified intervals. 

## Understanding the Cron Syntax
The syntax for a cron job is as follows:

```bash
* * * * * command_to_be_executed
```

Each asterisk `*` represents a different time unit:

- `* * * * *`: Minute, Hour, Day of Month, Month, Day of Week
- `*`: Represents all possible values for that position.

## Editing the Cron Table
1. Open the crontab editor by running the following command:
    ```bash
    crontab -e 
    ```
    If this is your first time, you might be prompted to choose an editor. Select your preferred editor (nano, vim, etc.).
2. Add a new line for your cron job. Use the cron syntax mentioned earlier.