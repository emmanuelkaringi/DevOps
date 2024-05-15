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
