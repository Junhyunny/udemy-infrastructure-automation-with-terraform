
## Chapter055. Elastic Beanstalk

* Elastic Beanstalk is AWS's Platform as a Service(PaaS) solution
* It is a platform where you launch yout app on without having to maintain the underlying infrastructure
    * You are still responsible for the EC2 instances, but AWS will provide you with updates you can apply
    * Update can be applied manually or automatically
    * The EC2 instances run Amazon Linux
* Elastic Beanstalk can handle application scaling for you
    * Underlying it uses a Load Balancer and an Autoscaling group to achieve this
    * You can scheduling scaling events or enable autoscaling based on a metric
* It is similar to Heroku(another PaaS solution)
* You can have an application running just in a few clicks using the AWS Console
    * Or using the Elastic Beanstalk resources in Terraform
* The supported Platforms are
    * PHP
    * Java SE, Java with Tomcat
    * .NET on Windows with IIS
    * Node.js
    * Python
    * Ruby
    * Go
    * Docker(single container + multi-container using ECS)
* When you deploy an Elastic Beanstalk environment you will get a CNAME(host name) that you can use as endpoint
* You can use Route53 to point your domain to that CNAME
* Once Elastic Beanstalk is running, you can deploy your application on it using the EB Command Line utility
