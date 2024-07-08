FROM openjdk:17-jdk-alpine
WORKDIR app.jar
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
