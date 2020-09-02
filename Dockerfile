FROM jenkins/jenkins:lts
LABEL maintainer=”satya.dhenuvakonda@gmail.com”

USER root
RUN apt-get install python-pip -y
RUN pip install jenkins-job-builder
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins

# USER jenkins

ENV JAVA_OPTS="-Xmx8192m"
# ENV JENKINS_OPTS="--handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"
ENV JENKINS_OPTS="--handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"