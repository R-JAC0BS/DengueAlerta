
<<<<<<< HEAD
FROM maven:3.8.4-jdk-17 AS build
=======
FROM maven:3.9.7-eclipse-temurin-17 AS build
>>>>>>> 061f8ea43a0aa435ab592e6491b3a49a249ef369
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests


FROM eclipse-temurin:17
COPY --from=build /app/target/*.jar /myapp.jar
EXPOSE 8080
CMD ["java", "-jar", "/myapp.jar"]
