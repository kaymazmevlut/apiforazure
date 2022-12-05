FROM adoptopenjdk:11-jre-hotspot as builder
FROM openjdk:8-jdk-alpine as build
COPY . /project
WORKDIR /project
RUN chmod +x mvnw \
    && ./mvnw --version \
    && ./mvnw clean package \
    && cp ./target/learning-spring-boot-0.0.1.jar app.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
