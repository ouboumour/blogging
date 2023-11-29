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
