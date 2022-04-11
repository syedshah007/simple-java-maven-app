FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY /var/jenkins_home/workspace/java-maven-build/target/my-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-maven-app-1.0-SNAPSHOT.jar"]
