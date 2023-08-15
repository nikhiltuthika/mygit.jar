# Use a base image
FROM openjdk:8

# Copy the JAR file into the container
COPY my-app-1-1.jar /app/my-app-1-1.jar

# Set the working directory
WORKDIR /app

# Expose the port your application listens on (if applicable)
EXPOSE 8080

# Print the JAR file name and then exit
CMD ["sh", "-c", "echo 'Running JAR file: my-app-1-1.jar' && java -jar my-app-1-1.jar"]
