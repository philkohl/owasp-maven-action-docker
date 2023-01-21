FROM maven:3-eclipse-temurin-17-alpine

RUN mvn org.owasp:dependency-check-maven:check update-only

ENTRYPOINT ["mvn", "org.owasp:dependency-check-maven:check", "-DdataDirectory=/dependency-check/data"]
