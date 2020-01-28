FROM openjdk:8-jre-alpine

RUN apt-get update
RUN apt-get install -y maven

WORKDIR /code

ADD pom.xml /code/pom.xml
ADD src /code/src

RUN ["mvn", "clean"]
RUN ["mvn", "install"]

EXPOSE 9093:9093

ENTRYPOINT ["java","-jar","target/ms3-0.0.1-SNAPSHOT.jar"]