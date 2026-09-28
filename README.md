# docker-aws-tf-setup
Repo to setup and run docker engine in an ec2instance. Uses new vpc, rt, igw.

1) Install Terraform in CloudShell , run the setuptf.sh
2) Generate an SSH key pair (in CloudShell) : 
    mkdir -p ~/.ssh && cd ~/.ssh
    ssh-keygen -t rsa -b 2048 -f docker-practice-key -N ""

3) Set up your working directory
4) Clone this repo
5) Apply the terraform changes
    curl ifconfig.me   # note this IP we will need it later
    terraform init
    terraform apply -var="my_ip=<paste_ip_here>"
6) SSh into your ec2 instance which has docker running on it
   ssh -i ~/.ssh/docker-practice-key ubuntu@<output_ip>
   docker version
   docker run hello-world
   docker ps
7) After you finish whatever you wanted to practice, exit the ssh and run the tf destroy command
   terraform destroy -var="my_ip=<same_ip>"
