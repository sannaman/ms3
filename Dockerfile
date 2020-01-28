FROM openjdk:8-jre-alpine

#RUN apt-get update
#RUN apt-get install -y maven
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/ms3-0.0.1-SNAPSHOT.jar $PROJECT_HOME/ms3.jar

WORKDIR $PROJECT_HOME

EXPOSE 9093:9093

ENTRYPOINT ["java","-jar","target/ms3"]
#CMD ["java", "-Dspring.data.mongodb.uri=mongodb://mongo:27017/spring-mongo","-Djava.security.egd=file:/dev/./urandom","-jar","./spring-boot-mongo.jar"]




#WORKDIR /code

#ADD pom.xml /code/pom.xml
#ADD src /code/src

#RUN ["mvn", "clean"]
#RUN ["mvn", "install"]


#ENTRYPOINT ["java","-jar","target/ms3-0.0.1-SNAPSHOT.jar"]