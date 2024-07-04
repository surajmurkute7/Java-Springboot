FROM maven as build
ENV -e MAVEN_CONFIG=/var/maven/.m2
WORKDIR /build/demo
COPY . /build/demo
RUN mvn clean install

FROM openjdk:17-jdk-alpine
WORKDIR /build/demo
COPY --from=build /build/demo/target/demo-0.0.1-SNAPSHOT.jar /build/demo
