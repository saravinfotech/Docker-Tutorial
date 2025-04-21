FROM openjdk:17
WORKDIR /appContainer
COPY ./target/spring-docker.jar /appContainer
COPY entrypoint.sh /appContainer/entrypoint.sh

# Make the script executable
RUN chmod +x entrypoint.sh

EXPOSE 8282

# Use the shell script as the entrypoint
CMD ["./entrypoint.sh"]

#CMD ["java","-jar","spring-docker.jar"]