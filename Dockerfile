FROM openjdk:11-jre-slim
RUN mvn clean install
COPY target/azuretestapi-0.0.1-SNAPSHOT.jar azuretestapi-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080