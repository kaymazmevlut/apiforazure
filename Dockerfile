FROM openjdk:11-jre-slim
COPY ./target/azuretestapp-0.0.1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080