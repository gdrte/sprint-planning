FROM java:8-alpine
MAINTAINER Your Name <you@example.com>

ADD target/sprint-planning-0.0.1-SNAPSHOT-standalone.jar /sprint-planning/app.jar

EXPOSE 8080

CMD ["java", "-jar", "/sprint-planning/app.jar"]
