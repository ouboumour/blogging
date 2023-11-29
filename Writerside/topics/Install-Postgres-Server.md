# Install Postgres Server

## Install PostgreSQL
<tabs>
    <tab title="Debian-based Linux Distros">
        <code-block lang="bash">apt install -y postgresql</code-block>
    </tab>
    <tab title="RPM-based Linux Distros">
        <code-block lang="bash">dnf install -y postgresql</code-block> 
    </tab>
</tabs>

## Check the PostgreSQL service
```bash
systemctl status postgresql
```

## Enable/Start PostgreSQL Service
```bash
systemctl enable postgresql
systemctl start postgresql
```
## PostgreSQL Configuration
1. `/etc/postgresql/15/main/postgresql.conf` file
   Check/Uncomment/Change if needed the `listen_addresses` key's value.
   This parameter defines the network interfaces on which the PostgreSQL server will accept connection requests.
   By default, it is often set to `localhost` or `127.0.0.1`, limiting connections to the local machine.
   To allow connections from other machines,
   you would need to set it to the IP address of the network interface or use `*` to listen on all available interfaces.

2. `/etc/postgresql/15/main/pg_hba.conf` file
   Add the line `host   all   all   <CLIENT_IP_ADDRESS>/<CIDR_SUBNET_MASK>  md5`.
   This allows you to connect remotely to the database server from another host with the specified ip address.

3. Restart the postgresql service to apply the new configuration
   ```bash
   systemctl restart postgresql
   ```
