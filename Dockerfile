FROM openjdk:17-jdk-alpine
WORKDIR /build
COPY target/demo-0.0.1-SNAPSHOT.jar /build
