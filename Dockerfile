FROM openjdk:8-jre-alpine
MAINTAINER Jim Zombek (jimzombek@gmail.com)
RUN apt-get update

MKDIR ??

COPY pom.xml /usr/local/service/pom.xml
COPY src /usr/local/service/src
WORKDIR /usr/local/service
RUN mvn package
CMD ["java", "cp", "target/et-1.0-SNAPSHOT.jar", "com.jmzombek.et.App"]




docker build -t myimage:latest
docker run it myimage


