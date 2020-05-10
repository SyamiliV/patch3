#new change i am commiting
# Pull base imagesssssss
From tomcat:8-jre8 

#@`` Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
