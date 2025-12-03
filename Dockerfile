FROM amazoncorretto:21

COPY target/devops-0.0.1-SNAPSHOT.jar /devops.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/devops.jar"]