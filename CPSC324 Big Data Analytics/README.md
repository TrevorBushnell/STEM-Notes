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

### Data Platform Architectures

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