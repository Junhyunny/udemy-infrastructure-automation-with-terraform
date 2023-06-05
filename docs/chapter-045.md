
## Chapter044. IAM

* IAM is AWS Identity & Access Management
* It is a service that helps you control access to your AWS resources

* In AWS you can create
    * Groups
    * Users
    * Roles

* Users can have groups
    * for instance an "Administrators" group can give admin privileges to users
* Users can authenticate
    * Using a login / password
    * Optionally using a token
        * Multifactor Authentication(MFA) using Google Authenticator compatible software
    * an access key and secret key(the API keys)
* IAM roles
    * Roles can give users / services (temporary) access that they normally would not have
    * The roles can be for instance attached to EC2 instances
        * From that instance, a user or service can obtain access credentials
        * Using those access credentials the user or service can assume the role, which gives then permission to do something
    * example
        * you create a role `mybucket-access` and assign the role to an EC2 instance at boot time
        * you give the role the permissions to read and write items in "mybucket"
        * when you log in, you can now assume this `mybucket-access` role without using your own credentials - you will be given temporary access credentials which just look like normal user credentials
        * you can now read and write items in "mybucket"
    * Instead of a user using aws-cli, a service also assume a role
    * The service needs to implement the AWS SDK
    * When trying to access the S3 bucket, an API call to AWS will occur
    * If roles are configured for this EC2 instance, the AWS API will give temporary access keys which can be used to assume this role
    * After that the SDK can be used just like when you would have normal credentials
    * This really happens in the background and you do not see much of it
    * IAM roles only work on EC2 instances, and not for instance outside AWS
    * The temporary access credentials also need to be renewed, they are only valid for a predefined amount of time
        * This is also something the AWS SDK will take care of

* To create an IAM administrators group in AWS, you can create the group and attach the AWS managed Administrator policy to it.
* 