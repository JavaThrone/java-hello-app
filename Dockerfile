FROM openjdk:11-jre-slim-buster
MAINTAINER javahelloapp.com
COPY target/java-hello-app-0.0.1-SNAPSHOT.jar java-hello-app-0.0.1.jar
ENTRYPOINT ["java","-jar","/java-hello-app-0.0.1.jar"]
