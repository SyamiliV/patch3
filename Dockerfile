# Pull base images from dockerhub
From tomcat:8-jre8 

#@`` Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
