# Time Zone

## Checking the Current Time Zone

###### Method 1
```bash
timedatectl
```

[//]: # (![timedatectl_before]&#40;images/timedatectl_before.png&#41;)

###### Method 2
```bash
ls -l /etc/localtime
```

[//]: # (![etc_localtime]&#40;images/etc_localtime.png&#41;)

## Changing the Time Zone {id="changing-the-time-zone_1"}

###### Checking available Time Zones
```bash
timedatectl timedatectl list-timezones
```

Note: You can use grep command utility to make the search process faster.   
Example for Europe/Paris timezone.

[//]: # (![grep_paris_timezone]&#40;images/grep_paris_timezone.png&#41;)

###### Changing the Time Zone
```bash
timedatectl set-timezone <YOUR_TIME_ZONE>
```

###### Final check
```bash
timedatectl
```

[//]: # (![timedatectl_after]&#40;images/timedatectl_after.png&#41;)