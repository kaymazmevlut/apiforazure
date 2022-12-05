FROM openjdk:11-jre-slim
LABEL description="AMPS batch application that runs scheduled jobs."

ENV TZ="US/Central"

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080