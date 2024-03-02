# Base image with Java 17
FROM openjdk:17-slim

RUN apk add --no-cache openjdk17 openjdk17-jre maven
# Set working directory
WORKDIR /app

COPY . .

RUN mvn clean package

# Copy JAR file
COPY target/*.jar app.jar

# Expose port (replace 8080 with your application's port)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
