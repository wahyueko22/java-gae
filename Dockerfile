# Base image with Java 17
FROM openjdk:17-slim

# Set working directory
WORKDIR /app

# Copy JAR file
COPY target/*.jar app.jar

# Expose port (replace 8080 with your application's port)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
