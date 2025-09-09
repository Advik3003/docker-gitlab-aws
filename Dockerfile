# Step 1: Use official JDK image to build and run Spring Boot app
FROM maven:3.9.9-eclipse-temurin-17 AS build

# Step 3: Set working directory inside container
WORKDIR /app

# Step 4: Copy the jar file from target folder to container
COPY target/docker-gitlab-aws-0.0.1-SNAPSHOT.jar app.jar

# Step 5: Expose port 8080 (Spring Boot default port)
EXPOSE 8080

# Step 6: Run the application
CMD ["java", "-jar", "app.jar"]