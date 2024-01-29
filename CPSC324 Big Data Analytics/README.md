# CPSC324: Big Data Analytics

## How to Read Research Papers

1. **READING FOR A PURPOSE**
  * for us to understand basic idea, approach, assumptions, trade-offs
2. **READ IN MULTIPLE PASSES** (easier to understand)
  * First: title, section titles, figures/captions/tables
  * Second: Abstrat (mini-paper)
    * problem, why important, solutions/approach, results
    * focus on approach and results
  * Third: Full read
    * active w/ notes (use style that you prefer)
    * often in phases
      * into up to (not including) evaluation
      * checkpoint
      * eval to conclusion
3. **PUSH THROUGH TOUGH/CONFUSING PARTS**
  * good skill: hold content w/o understanding
    * usually that content will become clearer at a later time


## Course Introduction

> **Goal #1:** Cover underlying ideas of "modern" data & analytics systems

* systems span entire data & processing "life cycle"
    * how to get data into the system
    * how to deal with different kinds of data
    * how to query data
    * how to process data
* focus on stability as data, processing, users, and uses increased
* this goal will be achieved through the reading assignments in the course
* *scalability:* if more resources gain same/similar performance increases
  * EX: handle 2x the data if we add 2x computers
  * EX: 10x faster with 10x CPUs
  * scale-out (scale horizontally): increasing the number of machines (computers? what is a machine?)
  * scale-up (scale vertically): increasing the "power" of a machine (more RAM, more disk, more CPUs, etc.)

> **Goal #2:** Hands-on experience using systems

* in the context of this class, this means cloud computing
* this will be achieved through HW assignments on Google Cloud Platform (GCP)

### Course Title: Big Data Analytics

* really should be called "data engineering for data science"

#### What Does Analytics Mean?

* *descriptive analytics:* find patterns in data and gather a larger understanding of the data you are currently ingesting
  * EX: total energy usage by month over the last 2 years
* *diagnostic analytics:* why?
  * EX: relationships between monthly energy use and utilization

> descriptive and diagnostic analytics are examples of **business intelligence**

* *predictive analytics:* using historical/current data to predict what happens next (essentially a guessing game)
  * typically while doing this we are generating a model
  * EX: energy use for next year by month given expected utilization
* *proscriptive analytics:* use predictive models to take action or make decisions
  * EX: using the model, delay requests to reduce demand on local grid energy
  * something similar done in Google data centers

## Data Architecture

### What Does Big Data Mean?

* **big data:** implies a relative measure of the data storage and processing
  * implies that we can't do the "normal" approach and rather need to do something drastically different
* WAYS THAT DATA CAN BE BIG
  * Volume: overall amount
  * Variety: different types/formats of data
  * Velocity: amount generated... streaming/real-time related
* CHARACTERISTICS OF BIG DATA
  * Value: data is useful to help your goals
  * Veracity: quality/correctness of the data
* In this class, we will cover high-level data platform architectures and then drill down a bit to see components/tasks

### Data Platform Architecturesxit


**TRADITIONAL DATA WAREHOUSE ARCHITECTURE:**

![traditional data warehouse architecture](./images/2.1.png)

  * mostly for structured data sources
  * ETL (Extrat, Transform, Load) takes considerable effort (DUDE, IT'S HARD)
  * systems mainly used on-premise servers
  * scalability becomes tricky and expensive (partitioning, load-balancing, etc.)
  * many DMBSs 20+ years ago not designed for large "scale-out"
    * typically these designs were meant to be scsaled vertically NOT horizontally
  * harder to use with data increases (type) & uses (ML...)
    * you would need a different architecture for real-time/streaming data

**CURRENT TWO-TIER DATA ARCHITECTURES:**

![CURRENT TWO-TIER DATA ARCHITECTURES](./images/2.2.png)

* supports data variety through file-based data storage (*data lake*)
* decouples ETL transform step from extract and load
* better supports wider range of analytical processing
* assumes scale-out performance, decouple storage and compute
* everything is stored on the cloud, which completely takes advantage of the ability to scale-out
* according to [Armbrust], widely used including Fortune 500 companies

### An Outline of this Class and Google's Architecture

![GOOGLE'S DATA ARCHITECTURE](./images/3.1.png)

* Google Cloud Platform: similar to the data lake, just general file storage for throwing data into
* Google Big Query: the data warehouse - where all the data is formalized and cleaned to be stored and queried by other data professionals
* ETL VS ELT
  * ETL: Extract, Transform, Load: data is transformed before it is saved anywhere
  * ELT: Extract, Load, Transform: data is loaded into the data lake as is, then when people want the data they come back to translate the data
* data lake: there to just batch store data, especially useful for data that is being streamed continuously over time


## Machines, Networks, Properties

### Machines

* **machine abstraction:** computers as (simplified) devices containing:
  * 1+ processors (CPU)
  * RAM
  * disk storage as HDD or SSD
  * network connection
* **server:** generally software that provides a service to clients
  * often used interchangeably with machine running server software
* **commodity-class:** lower-cost machines, standard "off-the-shelf" components
* **server-class:** higher-cost machines, high speed/high-capacity components

### More on Memory

* **memory hierarchy:** from small-fast to large-slow
  * registers: within CPU, smallest and fastest
  * L1, L2, L3 Cache: within CPU, increasing size/decreasing speed
  * RAM: on motherboard, much larger in size
  * Flash: non-volatile, storage medium, e.g. on the motherboard
  * Disk: non-volatile, storage device, SSD then HDD, often "removable"
* cache memory helps reduce time from RAM to registers
  * fetches contiguous block of memory into L1, L2, L3
  * if CPU needs data not in cache, results in a **cache miss**
  * exploits the notion of **data locality** (e.g. think array access)

### Many Machines

* **server rack:** physical rack holding multiple computers/devices
  * devices in rack-mountable cases
  * slot heigh in rack unit $\mu=1.75$ inches
* **network packets:** consist of data (payload) and destination
* **hub, switch, router:** for moving packets
  * hub: forwards packets to all machines connected
  * switch: forwards packets to appropriate machine
  * router: directs traffic between networks
* **network topology:** structure of connections, e.g. tree-like and mesh
* **data center:** collection of racks, devices connected forming networks
  * can be separate space in a building, an entire building, or many buildings
* **google data centers:** 14 in US, 6 in Europe, 3 in Asia, 1 in Chile
  * 10s of machines per rack, stacked in rows, 1 or more rows form a *cluster*
  * a cluster contains 10k+ machines (aka cluster *nodes*)
  * building holds multiple clusters, campus (site) has multiple buildings
* **load balancer: distributes network traffic to balance resource use**
  * for replicated resources (e.. same services running over many machines)
  * a separate device or software (server) that dynamically routes to a replica
* **remote procedure call (RPC):** a program "calls" procedure on another node
  * protocol handles details, including data passing (serlialization)exit
  

## GCP Basics and System Properties

* To use the coupons you need to log in with your Zagmail account and choose the *Google Workspace Account* option
  * you know it worked if you get re-directed to SSO

### Main Ways to Interact with GCP Services

1. **cloud console:** a GUI that lets you click and select all the options that you want
2. **CLI:** from your local machine or through the *cloud shell*
  * cloud shell lets you open a shell in the browser with everything installed for you
3. **programmatically via the SDK:** we will use the Python one but there are many languages that are supported with this
4. **Cloud REST APIs:** not the best way to interact, we will not learn how to use this tool in this class

### GCP Regions & Zones

* manyl cloud platforms have geolocation information that is important when managing your cloud computing
* a **region** is a geoprahic area consisting of 3 more more zones
  * our closest region is `us-west-1` (the Orgeon region)
* a **zone** is hosted in one more more *clusters* (in a data center) but these zones move around and depend on your organization
  * zones are considered *single-failure-domain* because there is a chance that zones can fail

### Data Sizes

* **byte:** 8 bits
* **kilobyte (kB):** 1000 bytes
  * kilo = $10^3$ (so 1000 in base10)
  * kibi = $2^10$ (1024 base2)
  * when dealing with memory it is with kibi, but when talking about volumes of data we mean traditional SI units 
* **megabyte (MB):** 1000 kB
  * 1MB = 1,000,000 bytes
  * mebibyte - base 2 notion
* **gigabyte (GB):** 1000 MB
  * 1GB = 1,000,000,000 bytes
  * gibibyte - base 2 notion
* **terabyte (TB):** 1000 GB
* **petabyte (PB):** 1000 TB
* **exabyte (EB):** 1000 PB
* **zetabyte (ZB):** 1000 EB

### GCP Compute Engine

* Provide *"on-demand"* VMs
  * on-demand: always available and you pay $ when the VM is on
    * this is called *provisioning*

#### Classes of Google VMs

* E2: 2 & 32 vCPUs
  * each vCPU has 4 GiB of RAM
  * no local storage
  * costs roughly $2\cent$ per vCPU per hour
  * costs roughly $0.003\cent$ per GiB RAM per hour
* N2: 2 to 128 vCPUs
  * each vCPU has 4 GiB of RAM
  * has local SSD option
  * costs roughly $3\cent$ per vCPU her hour
  * costs roughly $0.004\cent$ per GIB RAM per hour