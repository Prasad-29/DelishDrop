# Use official Java 17 base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy all project files into container
COPY . .

# Build the project (skip tests for faster build)
RUN ./mvnw clean package -DskipTests

# Run the JAR file
CMD ["java", "-jar", "target/*.jar"]
