
## Chapter032. Introduction to VPCs - Part 2

* On Amazon AWS, you start by creating your own virtual private network to deploy your instances / databases in
* This VPC uses the `10.0.0.0/16` addressing space, allowing you to use the IP addresses that start with "10.0", like this `10.0.x.x`
* This VPC covers the us-west-1 region, which is an Amazon AWS region in Ireland

* Private Subnets
* Using only privately, Not Public

| range | from | to |
|:-:|:-:|:-:|
| 10.0.0.0/8 | 10.0.0.0 | 10.255.255.255 |
| 172.16.0.0/12 | 172.16.0.0 | 172.31.255.255 | 
| 192.168.0.0/16 | 192.168.0.0 | 192.168.255.255 |

| range | network mask | total addresses | description | examples |
|:-:|:-:|:-:|:-|:-:|
| 10.0.0.0/8 | 255.0.0.0 | 16777214 | Full 10.x.x.x range | 10.0.0.1, 10.100.200.20 |
| 10.0.0.0/16 | 255.255.0.0 | 65536 | what we used for our VPC | 10.0.5.1, 10.0.20.2, 10.0.100.3 |
| 10.1.0.0/16 | 255.255.0.0 | 65536 | what we can use for another VPC | 10.1.5.1, 10.1.20.2, 10.1.100.3 |
| 10.1.0.0/24 | 255.255.255.0 | 256 | All addresses within from 10.0.0.0 ~ 10.0.0.255 | 10.0.0.1, 10.0.0.2, 10.0.0.3 |
| 10.1.1.0/24 | 255.255.255.0 | 256 | All addresses within from 10.0.1.0 ~ 10.0.1.255 | 10.0.1.1, 10.0.1.2, 10.0.1.3 |
| 10.0.0.5/32 | 255.255.255.255 | 1 | Single Host | 10.0.0.5 |
