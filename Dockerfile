# Pull base images from dockerhub site
From tomcat:latest

#@`` Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
