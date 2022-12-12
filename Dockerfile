FROM openjdk:11

EXPOSE 8080

COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar", "azuretestapi.jar"]
