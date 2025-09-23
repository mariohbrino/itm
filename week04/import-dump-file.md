# Import a Dump SQL File with MySQL CLI

Start MySQL with docker compose:
```bash
docker compose up -d
```

Download the file from and import the databases and data with the mysql command:
```sql
 mysql -u root -p -h 127.0.0.1 -P 3306 < db-intro-database-setup.sql
```
