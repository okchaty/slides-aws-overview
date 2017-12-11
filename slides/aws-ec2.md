### EC2 - Elastic Compute Cloud

![aws ec2](assets/images/aws-ec2.png)


#VSLIDE

### EC2 - Elastic Compute Cloud

- Is a Webservice that provides resizable compute capacity in the cloud.
- Reduces the time required to obtain and boot new server instances to minutes.
- Allowing you to quickly scale capacity.
- Both up and down, as your computing requirements change.

#VSLIDE

### EC2 - Elastic Compute Cloud

- Changes the economics of computing by allowing you yo pay only for capacity that you actually use.
- Provides developers the tools to build failure resilient Applications and isolate themselves from common failure scenarios.


#VSLIDE

### EC2 - Options

- On Demand - Allow you to pay a fixed rate by the hour (or by the second) with no commitment.
- Reserved - provide you with a capacity reservation, and offer a significant discount on the hourly charge for a instance. 1 year or 3 year terms.
- Spot - enable you to bid whatever price you want for instance capacity, providing for even greater savings if your applications have flexible start and end times.
- Dedicated Hosts - Physical EC2 server dedicated for you use, Dedicated Hosts can help you reduce costs by allowing  you to use your existing server-bound software licenses.

#VSLIDE

### On Demand

- Users that want the low cost and flexibility of Amazon EC2 whithout any up-front payment or long-term commitment.
- Applications with short term, spiky, or unpredictable workloads that cannot interrupted.
- Applications being developed or tested on Amazon EC2 for the first time.

#VSLIDE

### Reserved

- Applications with steady state or predictable usage.
- Applications that require reserved capacity.
- Users able to make upfront payments to reduce their total computing costs even further

#VSLIDE

### Spot

- Applications that have flexible start and end times.
- Applications that are only feasible at very low compute prices.
- Users with urgent computing needs for large amounts of additional capacity.

#VSLIDE

### Dedicated Hosts

- Useful for regulatory requirements that may not support multi-tenant virtualization.
- Great for licensing which does not support multi-tenancy or cloud deployments.
- Can be purchased on-demand (hourly.)
- Can be purchased as a reservation for up to 70% off the on-demand price.

#VSLIDE

### Instance Types

| Family        | Speciality                                    | Use case                                |
| ------------- | :-------------:                               | -----:                                  |
| D2            | Dense Storage                                 | Fileservers/Data Warehousing/Hadoop     |
| R4            | Memory Optimized                              | Memory intensive Apps/DBs               |
| M4            | General Purpose                               | Application Servers                     |
| C4            | Compute Optimized                             | CPU Intensive Apps/DBs                  |
| G2            | Graphics Intensive                            | Video Encoding/3D Application Streaming |
| I2            | High Speed Storage                            | NoSQL DBs, Data Warehousing, etc        |
| F1            | Field Programable Gate Array                  | Hardware Acceleration for you code.     |
| T2            | Lowest Cost, General Purpose                  | Web Servers, Small DBs                  |
| P2            | Graphics/General Purpose GPU  | Machine Learning, Bit Coin Mining, etc                 |
| X1            | Memory Optimized                              | SAP Hana/Apache Spark/etc                                        |


---?include=slides/ec2/ebs.md

---?include=slides/ec2/securitygroup.md

---?include=slides/ec2/efs.md

---?include=slides/ec2/loadbalancer.md