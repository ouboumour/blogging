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