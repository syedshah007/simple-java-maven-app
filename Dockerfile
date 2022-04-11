FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY /var/lib/docker/volumes/jenkins_home/_data/workspace/java-maven-build/target/my-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-maven-app-1.0-SNAPSHOT.jar"]
