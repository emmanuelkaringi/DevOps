# Configuration Management With Ansible

- **Configuration management** is how a DevOps engineer manages the configuration of the servers/infrastructure.
- **Tools** - Ansible, Puppet, Chef, Salt

### Why is Ansible better than Puppet?
1. Puppet is a pull mechanism model while Ansible is a Push mechanism model(Write Ansible script at one instance and update all the worker nodes).
2. Ansible uses an Agentless model (just put DNS or ip adress of servers in inventory file and have ssh password-less authentication configured, along with python3 installed by default in Linux distros.) while Puppet uses Master/slave architecture.
3. Ansible supports both Windows and Linux in an easier manner.
4. Ansible is easier to use and simple (uses simple yaml manifest).

## Interview Questions
1. What is a programming language that Ansible uses? **Python**
2. Does Ansible support both linux and windows? **Yes, Ansible supports both Linux (Using the SSH protocol) and Windows (Using the Win RM protocol)**
3. Why did you choose to use Ansible over the other tool? **Check above on why Ansible is better**
4. Is Ansible a push mechanism or pull? **Push mechanism**
5. What programming language is used to write Ansible playbooks? **YAML**
6. Does Ansible support all cloud provider or not? **Ansible works with machines that have ssh enabled (Machine should be publicly accessible) regardless of the cloud provider it is on.**
7. What is an ansible playbook? **lists of tasks that automatically execute for your specified inventory or groups of hosts. Similar to shell scripts but for ansible**
8. What is the difference between ansible adhoc commands and ansible playbooks? **Adhoc commands are used for executing on or two commands while playbooks are used for multiple commands**
9. `-m` stands for modules [source](https://docs.ansible.com/ansible/2.9/modules/list_of_all_modules.html)
10. `-a` stands for command to be executed.
11. How do you group servers in ansible? ** In inventory file, list all the Ip addresses of the servers** Example inventory file:
    ```
    [dbservers]
    172.1.0

    [webservers]
    172.2.0
    ```

## Project (Steps)
1. Create an EC2 instance
2. Install Ansible
    - `sudo apt update`
    - `sudo apt install ansible`
    - Verify installation `ansible --version`
3. Create a second EC2 instance (**Use the first instance to configure the second instance**)
4. Enable passwordless authentication on the second instance (Do this steps while looged in to the first instance)
    - `ssh-keygen` to generate a key.
    - `cat /home/ubuntu/.ssh/id_rsa.pub` to view the public key.
    - Copy the public key and login into the second machine in a new tab.
    - Generate public and private key on the second instance.
    - Open authorized keys file `vim ~/.ssh/authorized_keys` and paste the public key from the first instance and save file.
    - In the first tab (first instance) ssh into the second instance `ssh private ip`
5. Create an inventory file and paste the IP address of the target machines `vim inventory`
5. Write an ansible command to create a file (ansible adhoc commands)
    - `ansible -i location/name of inventory file ip of targetVM/all -m "shell" -a "touch filename"`
6. Confirm if the file is created in the target VM - `ls -ltr`
7.  Write an ansible playbook to install and start Nginx
-`vim filename.yml`
    ```yaml
    ---
    - name: Install and start Nginx
      hosts: all
      become/become_user: root #Give root access
    
      tasks:
      - name: Install Nginx
        shell: apt install nginx
          OR
        apt:
          name: nginx
          state: present
      - name: Start Nginx
        shell: systemctl start nginx
        OR
        service:
          name: nginx
          state: started
    ```
8. Execute playbook - `ansible-playbook -i inventoryfile playbookfile.yaml`
9. Check status of nginx on the second VM - `sudo systemctl status nginx`
