# pre-requirements
sudo yum install -y git 
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-ce
sudo systemctl enable docker.service
sudo systemctl start docker.service
cd /var/lib/jenkins/workspace/Docker
pwd
# Build Application with Docker 
sudo docker build -t flask:latest .
sudo docker run -i -d -p 5000:5000 flask:latest
sudo docker ps 
# View Applicaton
echo "You can view your Application at ip:5000"
