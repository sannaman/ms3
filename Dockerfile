FROM openjdk:alpine
EXPOSE 9093:9093
ADD /target/*.jar ms3.jar
ENTRYPOINT ["java","-jar","/ms3.jar"]