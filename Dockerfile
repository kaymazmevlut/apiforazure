FROM openjdk:11-jre-slim
COPY target/*.jar azuretestapi
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080