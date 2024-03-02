# Stage 1: Build stage with Maven
FROM maven:3.8.5-openjdk-17-slim AS builder

WORKDIR /app

COPY . .

# Run Maven commands
RUN mvn package

# Stage 2: Final image (copy JAR and dependencies)
FROM openjdk:17-slim

WORKDIR /app

COPY --from=builder /app/target/*.jar .

# Executable or CMD based on your application needs
CMD ["java", "-jar", "your-app.jar"]
