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

## Create a simple Database for test
1. Switch to postgres user
    ```bash
    sudo su postgres
    ```
2. Start interacting with PostgreSQL by connecting to the default database and user (postgres for both)
    ```bash
    psql
    ```
3. Set a password for the `postgres` user
   ```sql
   \password postgres
   ```
4. Get Infos

   You can get more info about the current user and database by running the command
    ```sql
    \conninfo
    ```
   List available databases
   ```sql
    \l
    ```
   List available tables in the current database
   ```sql
    \dt
    ```
5. Create database
   ```sql
   create database <DATABASE_NAME>;
   ```
6. Connect to that database
   ```sql
   \c <DATABASE_NAME>
   ```
7. Create a table inside that database
   ```sql
   CREATE TABLE students (
   student_id SERIAL PRIMARY KEY,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   age INTEGER,
   grade FLOAT
   );
   ```
8. Insert rows in the students' table in that database
   ```sql
   INSERT INTO students (first_name, last_name, age, grade) VALUES
    ('John', 'Doe', 20, 85.5),
    ('Jane', 'Smith', 21, 92.3),
    ('Mike', 'Johnson', 19, 78.9),
    ('Emily', 'Williams', 22, 95.7),
    ('David', 'Brown', 20, 88.2);
   ```