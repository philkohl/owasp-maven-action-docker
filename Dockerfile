FROM maven:3.8.7-eclipse-temurin-17-focal

RUN mvn org.owasp:dependency-check-maven:update-only

ENTRYPOINT ["mvn", "org.owasp:dependency-check-maven:check"]
