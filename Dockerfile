# Pull base image
FROM tomcat:8-jre8

# Maintainer
MAINTAINER "NagiReddy <nagireddy.guduru@gmail.com">

RUN apt-get update

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

ADD myweb/target/myweb.war /usr/local/tomcat/webapps/
