# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Resolve Maven dependencies and package the application
RUN ./mvnw clean package

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/tictactoe-1.0-SNAPSHOT.jar"]
