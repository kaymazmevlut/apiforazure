FROM openjdk:11-jre-slim
ARG JAR_FILE=target/azuretestapi-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080