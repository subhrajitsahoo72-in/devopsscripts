#for amzon linux 
sudo dnf install ansible -y
#for updated python version 
sudo dnf install python3 python3-pip -y
# set passwd for ssh connection 
passwd root 
# set the passwrd 
root123456
# enable all server to login as root
vi /etc/ssh/sshd-config
(40 & 65 uncomment both lines) and [ 65: passwordauthentication yes  40: PermitR ootLogin yes]
# restart the sshd
systemctl restart sshd
# to see the private ip
hostname -i 
#Go to Ansible Master
# Lets Generate SSH Keys, using this KEY Ansible server will communicate with worker nodes
ssh-keygen
#add worker node privet ip in your master 
ssh-copy-id root@private ip of prod-1 -- > yes -- > password -- > ssh private ip -- > ctrl d
vi /etc/ansible/hosts
# Ex 1: Ungrouped hosts, specify before any group headers.
[prod]
worker node privet --ip 
[dev]
worker node privet --ip
#  To check worker node connection with ansible server.
ansible all -m ping 
