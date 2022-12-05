FROM openjdk:11-jre-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} azuretestapi.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080