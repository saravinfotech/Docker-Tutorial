#!/bin/bash

# Create the log folder
mkdir -p /appContainer/logmon

# Run the Spring Boot app and redirect logs to application.log
java -jar spring-docker.jar > /appContainer/logmon/application.log 2>&1
