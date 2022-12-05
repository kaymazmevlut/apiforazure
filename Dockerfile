FROM adoptopenjdk:11-jre-hotspot as builder
COPY . /usr/app
WORKDIR /usr/app
RUN chmod +x mvnw \
    && ./mvnw --version \
    && ./mvnw clean package

FROM adoptopenjdk:11-jre-hotspot
COPY --from=build /usr/app/target/*.jar app.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
