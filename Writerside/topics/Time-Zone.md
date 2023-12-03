# Time Zone

## Checking the Current Time Zone


<tabs>
    <tab title="Based on timedatectl">
        <code-block lang="bash">timedatectl</code-block>
    </tab>
    <tab title="based on localtime file symbolic link">
        <code-block lang="bash">ls -l /etc/localtime</code-block> 
    </tab>
</tabs>

[//]: # (![timedatectl_before]&#40;images/timedatectl_before.png&#41;)

[//]: # (![etc_localtime]&#40;images/etc_localtime.png&#41;)


## Checking available Time Zones
```bash
timedatectl list-timezones
```

> You can use grep command utility to make the search process faster.

Example for Europe/Paris timezone.

[//]: # (![grep_paris_timezone]&#40;images/grep_paris_timezone.png&#41;)

## Changing the Time Zone
```bash
timedatectl set-timezone <YOUR_TIME_ZONE>
```

> You can check if the new timezone is set correctly by re-running the command.
> 
{style="note"}

[//]: # (![timedatectl_after]&#40;images/timedatectl_after.png&#41;)