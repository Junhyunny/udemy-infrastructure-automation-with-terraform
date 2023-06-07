
## Chapter051. Load Balancer

* Autoscaled instances, you might want to put a loadbalancer in front of it
* AWS Elastic Load Balancer(ELB) automatically distributes incoming traffic across multiple EC2 instances
    * The ELB itself scales when you receive more traffic
    * The ELB will health check your instances
    * If an instance fails its health check, no traffic will be sent to it
    * If a new instance is added by the autoscaling group, the ELB will automatically add the new instances and will start health checking it
* The ELB can also be used as SSL terminator
    * It can offload the encryption away from the EC2 instances
    * AWS can even manage the SSL certificates for you
* ELBs can be spread over multiple Availability Zones for higher fault tolerance
* You will in general achieve higher levels of fault tolerance with an ELB routing the traffic for your applicaiton
* ELB is comparable to a nginx / haproxy, but then provided as a service
* AWS provides 2 different types of load balancers
    * The classic load balancer(ELB)
        * routes traffic based on network information
        * e.g. forwards all traffic from port 80(HTTP) to port 8080(application)
    * The application load balancer(ALB)
        * routes traffic based on application level information
        * e.g. can route `/api` and `/website` to different EC2 instances