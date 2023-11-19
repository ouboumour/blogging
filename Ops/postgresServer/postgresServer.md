# Install Postgres Server

## Install PostgreSQL
```bash
[apt|dnf|yum|<YOUR_LINUX_DISTRO>] install -y postgreql
```

## Check the PostgreSQL service
```bash
systemctl status postgresql
```

## Enable/Start PostgresQL Service
```bash
systemctl enable postgresql
systemctl start postgresql
```
## PostgreSQL Configuration
#### `/etc/postgresql/15/main/postgresql.conf` file
Check/Uncomment/Change if needed the `listen_addresses` key's value.
This parameter defines the network interfaces on which the PostgreSQL server will accept connection requests.
By default, it is often set to `localhost` or `127.0.0.1`, limiting connections to the local machine.
To allow connections from other machines,
you would need to set it to the IP address of the network interface or use `*` to listen on all available interfaces.

## Create a simple Database for test
1. Switch to postgres user
    ```bash
    sudo su postgres
    ```
2. Start interacting with PostgreSQL by connecting to the default database and user (postgres for both)
    ```bash
    psql
    ```
3. Get Infos
   
   You can get more info about the current user and database by running the command
    ```postgresql
    \conninfo
    ```
   List available databases
   ```postgresql
    \l
    ```
   List available tables in the current database
   ```postgresql
    \dt
    ```
4. Create database
   ```sql
   create database <DATABASE_NAME>;
   ```
5. Connect to that database
   ```postgresql
   \c <DATABASE_NAME>;
   ```
6. Create a table inside that database
   ```sql
   CREATE TABLE students (
   student_id SERIAL PRIMARY KEY,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   age INTEGER,
   grade FLOAT
   );
   ```
7. Insert rows in the students' table in that database 
   ```sql
   INSERT INTO students (first_name, last_name, age, grade) VALUES
    ('John', 'Doe', 20, 85.5),
    ('Jane', 'Smith', 21, 92.3),
    ('Mike', 'Johnson', 19, 78.9),
    ('Emily', 'Williams', 22, 95.7),
    ('David', 'Brown', 20, 88.2);
   ```