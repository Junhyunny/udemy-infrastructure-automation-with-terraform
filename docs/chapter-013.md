
## Chapter013. Variables

* Everything in one file is not greate
* Use variables to hide secrets
    * you don't want the aws credentials in your git repository
* Use variables for elements that might change
    * AMIs are different per region
* Use variables to make it yourself easier to reuse terraform files
* exmample01
    * provider.tf - 클라우드 프로바이더의 정보 
    * vars.tf - 인증 정보에 관련된 변수
    * terraform.tfvars - 변수, `.gitignore`에 추가하여 원격 정보에 올라가지 않도록 처리
    * instance.tf - 인스턴스 정보