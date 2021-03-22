From tomcat:8.0.20-jre8
copy target/salesprocessing.war salesprocessing.war
CMD ["java","-jar","salesprocessing.war"]