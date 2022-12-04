FROM openjdk:11-jre-slim
COPY target/azuretestapi-0.0.1-SNAPSHOT.jar azuretestapi-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/azuretestapi-0.0.1-SNAPSHOT.jar"]