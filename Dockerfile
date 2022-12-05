FROM openjdk:11

EXPOSE 8080

WORKDIR /applications

COPY target/azuretestapi-0.0.1-SNAPSHOT.jar /applications/azuretestapi.jar

ENTRYPOINT ["java","-jar", "azuretestapi.jar"]
