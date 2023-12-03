# Time Zone

## Checking the Current Time Zone


<tabs>
    <tab title="Based on timedatectl">
        <procedure>
            <code-block lang="bash">timedatectl</code-block>
            <img src="timedatectl_before.png" alt="timedatectl_before" width="706" border-effect="line"/>
        </procedure>
    </tab>
    <tab title="Based on localtime file symbolic link">
        <procedure>
            <code-block lang="bash">ls -l /etc/localtime</code-block> 
            <img src="etc_localtime.png" alt="etc_localtime" width="706" border-effect="line"/>
        </procedure>
    </tab>
</tabs>

## Checking available Time Zones
```bash
timedatectl list-timezones
```

<tip>
    <p>
        Example for Europe/Paris timezone.
    </p>  
    <img src="grep_paris_timezone.png" alt="grep_paris_timezone" width="706" border-effect="line"/>
</tip>

> You can use `grep` command utility to make the search process faster.
>
{style="note"}

## Changing the Time Zone
```bash
timedatectl set-timezone <YOUR_TIME_ZONE>
```

<tip>
    <p>
        You can check if the new timezone is set correctly by re-running the command.
    </p>  
    <img src="timedatectl_after.png" alt="timedatectl_after" width="706" border-effect="line"/>
</tip>