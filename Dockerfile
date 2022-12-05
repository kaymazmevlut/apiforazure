FROM openjdk:11-jre-slim
COPY azuretestapi.jar /
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080