mkdir -m 777 folder1
cd folder1
cp /home/vsts/work/1/s/target/addressbook.war .
FROM centos:latest
# Creating Author name 
Maintainer "abc"
# update the container 
RUN yum update -y
# Install Java packages
RUN yum install java-1.8* -y 
# Install WGET package 
RUN yum install wget -y
# Download the package of Tomcat 
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.63/bin/apache-tomcat-8.5.63.tar.gz
# Extract the package of Tomcat 
RUN tar -xvzf apache-tomcat-8.5.63.tar.gz
# Deploy the war 
ADD addressbook.war /apache-tomcat-8.5.63/webapps
# Run the catalina service 
CMD "/bin/catalina.sh"
# create the port number
EXPOSE 8080

 




