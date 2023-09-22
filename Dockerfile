FROM tomcat:9.0.58-jdk17-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples

# Adding the root file
ADD ROOT.war /usr/local/tomcat/webapps

# Adding Homework files list
ADD Homework/Tuan2.war /usr/local/tomcat/webapps
ADD Homework/Tuan4.war /usr/local/tomcat/webapps

EXPOSE 8080
CMD ["catalina.sh", "run"]