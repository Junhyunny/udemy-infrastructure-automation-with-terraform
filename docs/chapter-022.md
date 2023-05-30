
## Chapter022. Data Sources

* For certain providers(like AWS), terraform provides datasources
* Datasources provide you with dynamic information
    * A lot of data is available by AWSs in a structured format using their API
    * Terraform also exposes this information using data sources
    * e.g. List of AMIs, List of availability Zones
* Another great example is the datasources that gives you all IP addresses in use by AWS
* This is great if you want to filter traffic based on an AWS region
    * e.g. allow all traffic from amazon instance in Europe
* Filtering traffic in AWS can be done using security groups
    * Incoming and outgoing traffic can be filtered by protocol, IP range and port
    * Similar to iptables(linux) or a firewall appliance
