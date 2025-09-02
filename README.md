# ITM111 - Introduction to Databases

This course teaches the basic elements of database management systems. It introduces students to the
concepts of logical and physical relationships in a data model and the concept of inner join. Students
will use a computer aided software engineering (CASE) tool to design, create and query a database.

### Topics

- Database management systems
- Relational databases
- Tables, rows, columns
- Normalization
- Constraints
- Queries
- SQL

## Install Workbench

Download the installer [here](https://dev.mysql.com/downloads/workbench/).

## Set up environment

This project contains a docker composer file that will create a mysql database container with credentials
and forward the port 3306 on the container to the 3306 host port.

To create and start the container, run the command below:
```bash
docker compose up -d
```

To stop and delete the container, run the command below:
```bash
docker compose down
```
> The database will be persisted on the volume and in case you may want to remove it use the flag -v.
