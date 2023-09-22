FROM tomcat:9.0.58-jdk17-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples

# Create a Homework folder
RUN mkdir -p Homework /usr/local/tomcat/webapps

# Adding the root file
ADD ROOT.war /usr/local/tomcat/webapps

# Adding Homework files list
ADD Homework/Tuan1.war /usr/local/tomcat/webapps
ADD Homework/Tuan2.war /usr/local/tomcat/webapps

# RUNNING THE SH SO THAT TOMCAT CAN COMPILE THE WAR FILES
RUN /usr/local/tomcat/bin/catalina.sh run

# MOVING THE FILES TO THE HOMEWORK FOLDER
RUN mv -f /usr/local/tomcat/webapps/Tuan1 /usr/local/tomcat/webapps/Homework
RUN mv -f /usr/local/tomcat/webapps/Tuan2 /usr/local/tomcat/webapps/Homework

EXPOSE 8080
# CMD ["catalina.sh", "run"]