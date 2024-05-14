# Deploy a Simple Web Application to AWS

### Requirements
1. AWS Account
2. Basic git knowledge
3. Basic Linux commands (ls, cd, mkdir e.t.c)

### Steps
**(Best Practice) - Create a IAM users instead of using the root account.**
1. Create and launch an EC2 instance. (AMI - Ubuntu)
2. Give read permission for the publickey - `chmod 400 filename`
3. Login into the EC2 instance - `ssh -i 'publickey' ubuntu@ipaddress`
4. Update the outdated packages and dependencies - `sudo apt update`
5. Install Git - `sudo apt-get install git`
4. Configure Node.js and npm (or any other depending on the project) - [Node.js Guide](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04)
5. Clone the project in the remote virtual machine - `git clone url`
6. Setup the necessarry environment variables (if applicabble) - `vim .env`
	```
	DOMAIN= ""
	PORT=3000
	```
7. Initialise and start the project
	```
	npm i
	npm run start
	```
*Edit the inbound rules in the security group of the EC2, in order to allow traffic from the particular port (In this case, allow port 3000 and source anywhere).*

**Project Deployed**
