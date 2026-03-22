FROM eclipse-temurin:11-jre-jammy

LABEL maintainer="your@email.com"

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]