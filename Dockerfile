#
# Build stage #
#docker pull maven:3.8.7-eclipse-temurin-11-alpine
FROM maven:3.8.7-eclipse-temurin-17-alpine AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:20-ea-17-jdk-slim
COPY --from=build /home/app/target/*.jar /usr/local/lib/app.jar
EXPOSE 8888
ENTRYPOINT ["bash"]
#ENTRYPOINT ["java","-jar","-Dspring.config.location=CERTS/","/usr/local/lib/app.jar"]