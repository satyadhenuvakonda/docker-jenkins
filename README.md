# docker-jenkins
create an Jenkins master
    Create volumes Data-volume(Data storage) Log-volume(Log storage)
Mount the volumes

# Build a docker image with Dockerfile and tag it as myjenkins
docker build --tag myjenkins:v1 .

# Run the image after build
docker run -p 8081:8080 -p 50000:50000 --name=jenkins-master --mount source=jenkins-log,target=/var/log/jenkins -d myjenkins
