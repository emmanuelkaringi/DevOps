# Introduction to CI/CD

## What is CI/CD?
**CI - Continuous Integration**
- Process of integrating tools/set of processes that should be followed before delivering the product to the customer.

**CD - Continuous Delivery**
- Delivering or deploying an application to the various customers.

- CI/CD is the process of automating the software development lifecycle.

## Jenkins
1. Create an Ubuntu EC2 instance
2. Install Jenkins on ec2
- Login/SSH into the instance
- Install Java
	```bash
	sudo apt update
	sudo apt install fontconfig openjdk-17-jre
	java --version #verify installation
	```
- Install Jenkins
	```bash
	sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

	echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

	sudo apt-get update
	sudo apt-get install jenkins
	
sudo systemctl status jenkins #check if Jenkins is installed and running

	ps -ef | grep jenkins #see which port jenkins is running on 
	```
2. Configure Jenkins and expose to outside world
- Change your EC2 security group settings, edit the inbound rule>> add rule (Custom TCP, 8080, Anywhere or my ip).
- Check if jenkins is running by going to `ec2ip:8080` on a new tab.
- Get the initial password - `sudo cat address given by jenkins`
- Signin to jenkins.
- Install suggested plugins.
- Create Admin User

3. Use Docker as Agents against the VM approach
- Install docker on the EC2 instance.
	```bash
	sudo apt update
	sudo apt install docker.io
	```
- Grant Jenkins user and Ubuntu user permision to docker deamon
	```bash
	sudo su -
	usermod -aG docker jenkins
	usermod -aG docker ubuntu
	systemctl restart docker
	```
- Restart jenkins
	`http:/ec2 Ip address:8080:restart`
- Install the Docker pipeline plugin in Jenkins
	- Login to jenkins.
	- Go to Manage Jenkins > Manage plugins.
	- In the Available tab, search for Docker Pipeline and install it.
	- Restart Jenkins after installation is done.
- Write a Jenkins Pipeline
	- New Item >> Pipeline
	### Project 1: A simple jenkins pipeline to verify if the docker slave configuration is working as expected.
	- Create a script, name it `jenkinsfile`
	```
	pipeline {
  	  agent {
    	    docker { image 'node:16-alpine' }
  	  }
  	  stages {
    	    stage('Test') {
      	      steps {
        	sh 'node --version'
      	      }
    	    }
  	  }
	}
	```
	- Save the file and click "Build Now"
	### Project 2: Multi Stage Multi Agent
	** Set up a multi stage jenkins pipeline where each stage is run on a unique agent. This is a very useful approach when you have multi language application or application that has conflicting dependencies. **
```
pipeline {
  agent none
  stages {
    stage('Back-end') {
      agent {
        docker { image 'maven:3.8.1-adoptopenjdk-11' }
      }
      steps {
        sh 'mvn --version'
      }
    }
    stage('Front-end') {
      agent {
        docker { image 'node:16-alpine' }
      }
      steps {
        sh 'node --version'
      }
    }
  }
}
```
4. Advantages of using Docker as Agents
- Easy to upgrade or downgrade java versions.

