# Use the official OpenJDK 8 image as the base image
FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/testapp-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your application will run on
EXPOSE 8082

# Command to run your application
CMD ["java", "-jar", "app.jar"]
