## Prerequisites

    - Jenkins Server: Ensure you have Jenkins installed and running.
    - Docker Installed: Jenkins server should have Docker installed to interact with Docker containers.

#Steps

1.  Install Jenkins Plugins

        Install Docker Plugin in Jenkins
          - In the "Available" tab, search for "Docker Pipeline"
          - Locate the "Docker Pipeline" plugin and select the checkbox.
          - Click "Install without restart" or "Download now and install after restart" if a restart is required.

2.  Configure Jenkins to Use Docker - Click on "Manage Jenkins" → "Global Tool Configuration". - Click on "Add Docker" under the "Docker installations" section. - Specify a name for this Docker installation (e.g., "docker"). - Install automatically: Jenkins can automatically install Docker for you. (Download)

3.  Grant Jenkins User Docker Acces - sudo usermod -aG docker jenkins - sudo systemctl restart jenkins

## how to install docker in aws ec2 instance of ubuntu server

```bash
sudo apt update
```

```bash
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
```

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

```bash
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```

```bash
sudo apt update
```

```bash
sudo apt install -y docker-ce
```

```bash
docker --version
```
