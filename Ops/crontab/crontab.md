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
    crontab -e -u <USER_NAME>
    ```
    If this is your first time, you might be prompted to choose an editor. Select your preferred editor (nano, vim, etc.).
2. Add a new line for your cron job. Use the cron syntax mentioned earlier.

## Hands-on
Bellow some examples:

#### Run a script every day at 2 AM
```bash
0 2 * * * /path/to/your/script.sh
```
- `0`: Minute (0-59)
- `2`: Hour (0-23)
#### Run a script every Monday at 8 PM
```bash
0 20 * * 1 /path/to/your/script.sh
```
- `1`: Monday (0-6, Sunday to Saturday)
#### Run a script every 15 minutes
```bash
*/15 * * * * /path/to/your/script.sh
```
-`*/15`: Every 15 minutes (0-59)

## Common Cron Commands
#### List your current cron jobs
```bash
crontab -l
```
#### Remove all your current cron jobs
```bash
crontab -r
```