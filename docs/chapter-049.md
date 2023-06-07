
## Chapter049. Autoscaling

* In AWS autoscaling groups can be created to automatically add/remove instances when certan threshold are reached
    * e.g. your application layer can be scaled out when you have more visitors
* To set up autoscaling in AWS you need to setup at least 2 resources
    * An AWS launch configuration
        * specifies the properties of the instance to be launched(AMI ID, security group, etc)
    * An autoscaling group
        * specifies the scaling properties (min instances, max instances, health checks)
* Once the autoscaling group is setup, you can create autoscaling policies
    * A policy is triggered based on a threshold(Cloud Watch Alarm)
    * An adjustment will be executed
        * e.g. if the average CPU utilization is more than 20%, then scale up by +1 instances
        * e.g. if the average CPU utilization is less than 5%, then scale down by -1 instances