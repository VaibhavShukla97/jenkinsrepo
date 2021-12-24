# FROM openjdk:8-jdk-alpine as builder
FROM maven:3.8-openjdk-8 as builder
RUN mkdir -p /app/source
COPY . /app/source
WORKDIR /app/source
RUN mvn clean install
RUN echo 'Runing LS'
RUN ls

FROM openjdk:8-jdk-alpine as runtime
WORKDIR /app/source
# COPY ./target/*.jar /app/app.jar
COPY --from=builder /app/source/target/*.jar /app/source/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/source/app.jar"]