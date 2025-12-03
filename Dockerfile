FROM amazoncorretto:21

COPY target/devops-*.jar /devops.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/devops.jar"]