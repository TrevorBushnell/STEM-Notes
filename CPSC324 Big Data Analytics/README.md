# CPSC324: Big Data Analytics

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

#### What Does Big Data Mean?

* **big data:** implies a relative measure of the data storage and processing
* WAYS THAT DATA CAN BE BIG
  * Volume: overall amount
  * Variety: different types/formats of data
  * Velocity: amount generated... streaming/real-time related
* CHARACTERISTICS OF BIG DATA
  * Value: data is useful to help your goals
  * Veracity: quality/correctness of the data

## Data Architecture

* 