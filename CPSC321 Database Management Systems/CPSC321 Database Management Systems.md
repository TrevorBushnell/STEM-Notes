# CPSC321: Database Management Systems

> **A Running Example:**
> 
> This class will use a fictional DB around an e-scooter/e-bike sharing company, which is loosely based on parts of Global Bikeshare Feed Specification (GBFS) which is used by the likes of Lime and Bird.
>  
> The basic data stored in this DB is as follows:
> 

- [CPSC321: Database Management Systems](#cpsc321-database-management-systems)
  - [Basic Concepts](#basic-concepts)
  - [Relational Model](#relational-model)
  - [SQL: Data Definition](#sql-data-definition)
  - [SQL: Data Manipulation](#sql-data-manipulation)
  - [SQL: Basic Queries](#sql-basic-queries)
  - [Dynamic SQL](#dynamic-sql)
  - [Logical Design](#logical-design)
  - [ER Modeling](#er-modeling)
  - [Physical Design](#physical-design)
  - [SQL Analytics](#sql-analytics)
  - [Advanced SQL](#advanced-sql)
  - [Concurrency Control](#concurrency-control)
  - [Recovery](#recovery)
  - [Non-Relational Systems](#non-relational-systems)


## Basic Concepts

1. Persistence: store data beyond the application that created it (when the application turns off, the data is still there)
2. Database: an organized data store for information; the organization makes it easier to obtain info and answer questions
3. Database Management System (DBMS): software system for managing data
4. DBMS supported user operations: **design, update, retrieve, manage**
   * design an organization for data (schema)
   * update data by adding, removing, modifying
   * retrieve data via a query language
   * manage who has permission to access data
5. Relational DBMSs and SQL: Relational DBMSs store data using the *relational model* which is tables that contain rows and columns. We can use SQL to manage and navigate the data inside a relational DBMS
   * NOTE: For the purposes of this class, RDBMS = DBMS
6. SQL COmmand (Sub) Languages:
   * Data Definition Language (DDL): `CREATE`, `ALTER`, `DROP`
   * Data Manipulation Language (DML): `INSERT`, `UPDATE`, `DELETE`
   * Data Query Language (DQL): `SELECT`, `WITH`
   * Data Control Language (DCL): `GRANT`, `REVOKE` (for accounts and privleges)
  
> It is important to note that other data models exist as well, such as document model, tree model, graph model, key-value model, and time-series model


7. Transaction Processing (aka "OLTP"): able to support the daily operations of a business in real time; there are many inserts, updates, deletes, and simple queries happening quickly and in concurrent sessions
8. Analytics (aka "OLAP"): supports decision making of a business; uses much more complicated queries over larger portions of the databse that tend to be read heavy and are often connected with data warehouses
9. Transactional Concurrency: a single transaction can invoke multiple data read/writes, which can lead to some system design and implementation challenges
    * most DBMSs (seamlessly) handle multiple transactions at once
10. ACID (transaction concurrency) properties
    * Atomicity: all or nothing execution of transaction
    * Consistency: transactions expected to preserve contraints of DB
    * Isolation: transactions execute as if no others execute at same time
    * Durability: transaction effect on DB must not be lost after it completes
    * Note: RDBMSs typically are ACID compliant





## Relational Model



## SQL: Data Definition



## SQL: Data Manipulation



## SQL: Basic Queries



## Dynamic SQL




## Logical Design



## ER Modeling



## Physical Design



## SQL Analytics



## Advanced SQL



## Concurrency Control



## Recovery



## Non-Relational Systems



