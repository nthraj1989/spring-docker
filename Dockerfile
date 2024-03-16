FROM openjdk:17
WORKDIR /appContainer
COPY cert.txt /appContainer/cert.txt
COPY ./target/spring-docker.jar /appContainer
EXPOSE 8282
CMD ["java","-jar","spring-docker.jar"]