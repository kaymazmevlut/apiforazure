FROM openjdk:11
VOLUME /tmp
EXPOSE 80
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} sampleapp.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/sampleapp.jar"]