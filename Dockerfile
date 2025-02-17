# Use OpenJDK 17 as base image
FROM openjdk:17

# Set working directory
WORKDIR /app

# Copy the correct JAR file into the container
COPY target/file-management-1.0-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
