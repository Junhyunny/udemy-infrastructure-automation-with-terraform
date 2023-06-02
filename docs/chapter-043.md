
## Chapter043. RDS

* RDS stands for Relational Database Services
* It is managed database solution
    * you can easily setup replication(high availability)
    * automated snapshots (for backups)
    * automated security updates
    * easy instance replacement(for vertical scaling)
* Supported databases are
    * MySQL
    * MariaDB
    * PostgreSQL
    * Microsoft SQL
    * Oracle
* Steps to create an RDS instance
    * Create a subnet group
    * Allows you to specify in what subnets the database will be in
        * e.g. eu-west-1a and eu-west-1b
    * Create a Parameter group
        * Allows you to specify parameters to change settings in the database
    * Create a security group that allows incoming traffic to the RDS instance