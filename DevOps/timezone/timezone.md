# Time Zone

## Checking the Current Time Zone

###### Method 1
```bash
timedatectl
```
![timedatectl_before](images/timedatectl_before.png)

###### Method 2
```bash
ls -l /etc/localtime
```
![etc_localtime](images/etc_localtime.png)

## Changing the Time Zone

###### Checking available Time Zones
```bash
timedatectl timedatectl list-timezones
```

Note: You can use grep command utility to make the search process faster.   
Example for Europe/Paris timezone.

![grep_paris_timezone](images/grep_paris_timezone.png)

###### Changing the Time Zone
```bash
timedatectl set-timezone <YOUR_TIME_ZONE>
```

###### Final check
```bash
timedatectl
```
![timedatectl_after](images/timedatectl_after.png)