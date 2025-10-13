FROM openjdk:21

COPY target/*.jar /devops.jar

EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java -jar devops.jar"]