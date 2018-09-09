FROM openjdk:8-jre-alpine
LABEL MAINTAINER = "Jim Zombek (jimzombek@gmail.com)"

COPY target/dockerized-0.0.1-SNAPSHOT.jar /home/testprj-1.0-SNAPSHOT.jar
CMD ["java","-jar","/home/testprj-1.0-SNAPSHOT.jar"]


#ADD Application.class Application.class
#ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "com.jmzombek.dockerized.Application"]

ADD target/dockerized-0.0.1-SNAPSHOT.jar dockerized-app.jar
#ENV JAVA_OPTS=""
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /dockerized-app.jar" ]
#ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "dockerized-app.jar"]


#RUN mkdir /jimz
#WORKDIR = /jimz
#COPY ./target/dockerized-0.0.1-SNAPSHOT.jar dockerized-0.0.1-SNAPSHOT.jar

#CMD ["java", "-jar", "/home/com.jmzombek.dockerized-1.0-SNAPSHOT.jar", "com.jmzombek.dockerized.Application"]
#CMD ["java", "-jar", "/dockerized-0.0.1-SNAPSHOT.jar"]


#WORKDIR /
#ADD HelloWorld.jar HelloWorld.jar
#CMD java - jar HelloWorld.jar


#COPY testprj-1.0-SNAPSHOT.jar /home/testprj-1.0-SNAPSHOT.jar
#CMD ["java","-jar","/home/testprj-1.0-SNAPSHOT.jar"]

#docker build -t myimage:latest .
#ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/myservice/myservice.jar"]

