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
    - [Relations](#relations)
    - [Arity VS Cardinality](#arity-vs-cardinality)
    - [Attribute Domains](#attribute-domains)
    - [Attribute Keys](#attribute-keys)
    - [More on Keys](#more-on-keys)
    - [Foreign Keys](#foreign-keys)
    - [Primary and Foreign Keys in Relational Design](#primary-and-foreign-keys-in-relational-design)
    - [Surrogate Keys](#surrogate-keys)
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

### Relations

* In the relational model, a database is simply a set of various **relations**, where a relation is simply a table with data in it
* An example relation:

**VehicleType**
|`vt_id`|`make`|`model`|
|-|-|-|
|1|Segway|Ninebot|
|2|Lime-S|Gen4|


* A relation's **schema** includes the following information:
  * The *name* of the relation
  * The set of named *attributes/columns*
  * Data types and contraints - also called the *domain*
* We often write a relation's schema like $R(a_1, a_2, ..., a_n)$
  * ex: `VehicleType(vt_id, make, model)`
* A relation's **instance** is the data that makes up the table - a set of tuples/rows/records (many instances may be possible for a given schema)
* A **database schema** is the set of relation schemas of the database
* A **database instance** is the set of relation instances of the database

### Arity VS Cardinality

RECALL THE TABLE FROM THE PREVIOUS SECTION

* **arity** (degree): the number of attributes/columns (for `VehicleType` its 3)
* **cardinality**: the number of instances/rows/tuples (for `VehicleType` its 2)


### Attribute Domains

* A **domain** is both the storage type of the attribute and the set of allowable values of an attribute (constraint)
* We assume that domains are *atomic*
  * vs collection based
  * non-atomic attribute: vehicles attribute with vehicle ids of the type
  * typical domain data types are int, double, string, date, etc.
  * domains can also restrict allowable values (e.g. ages from 0 to 110)
* `NULL` values in the database are special...
  * usually denotes that a value is unknown or does not exist
  * e.g. some vehicle types might not have an "alternative_name" value


### Attribute Keys

* A **key** is an attribute (or set of attributes) with unique values
  * Each row in the table MUST have a unique key value (cannot be NULL)
  * We typically <u>underline</u> the key attribute(s)
  * You can have more than one attribute work together to be the key
    * these *composite keys* of sorts are written in parentheses



### More on Keys

* Relations can have more than one set of key attributes, where each possible keys are a candidate
* Designing an attribute(s) as a key is a type of (operational) constraint
  * DBMS will not allow duplicate row values to be inserted
  * we say the DBMS *enforces* a (designated) key constraint
* A **primary key** is the designated key the DBMS enforces
  * DBMSs typically enforce only the *primary* key (chosen by the designer)
  * if multiple candidate keys, only one selected as primary
  * primary keys also imply a certain physical representation (more later)


### Foreign Keys

* **forgeign keys** state that a column's value must come from a key in another table
  * Ex: if we have a `Vehicle` table, that vehicle table should have the `vt_id` be a forgein key because we don't want to have the id representing a vehicle type that we have not seen before
* enforcing foreign key contraints helps maintain *referential identity*
* A foreign key must reference *the entire* primary key
  * they also must have compatible data types/domains
* a foreign key must contain either `NULL` or a value of the reference primary key
* The DBMS enforces foreign key constraints


### Primary and Foreign Keys in Relational Design

* Primary and foreign key constraints provide many modeling options for databases
  * AllowedPlan(<u>vt_id, p_id</u>)
    * a Vehicle Type can have multiple allowed Pricing Plans
    * a Pricing Plan is allowed for different vehicle types
  * AllowedPlan(<u>vt_id</u>, p_id)
    * a Vehicle Type has at most one allowed Pricing Plan
    * a Pricing Plan is allowed for different Vehicle Types
  * AllowedPlan(vt_id, <u>p_id</u>)
    * a Vehicle Type can have many different allowed Pricing Plans
    * any particular Pricing Plan is the allowed plan for at most one Vehicle Type

> Domains, PKs, and FKs are examples of *integrity constraints*


### Surrogate Keys

* "Naturally occurring" primary keys
  * many tables have attributes that make for "natural" keys (like student id)
  * sometimes, only candidate key is a composite key, but these are not good/ideal for foreign keys (e.g. storage space)
* "Artificial keys" are not "naturally occurring" keys
  * added in place of composite keys or if no candidate keys exist
  * a **surrogate key** is an artificial key with DBMS-generated values
* When to use surrogate keys
  * no natural primary key but need to reference rows
  * "shorten" composite keys
    * can cause uniqueness/consistency issues


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



