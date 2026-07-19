#!/bin/bash

# STEP-1: Update and install Git, Maven
sudo apt update -y
sudo apt install git maven -y

# STEP-2: Install Java 21 (Jenkins requirement)
sudo apt install openjdk-21-jdk -y

# STEP-3: Add Jenkins repo (2026 key - current valid key)
sudo mkdir -p /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list

# STEP-4: Install Jenkins
sudo apt update -y
sudo apt install fontconfig -y
sudo apt install jenkins -y

# STEP-5: /tmp size fix (agar space issue ho to)
sudo mount -o remount,size=2G /tmp

# STEP-6: Start Jenkins and enable at boot
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins
