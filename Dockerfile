FROM maven:3-eclipse-temurin-17-alpine

RUN mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
RUN cd && mvn org.owasp:dependency-check-maven:check update-only && cd ..

ENTRYPOINT ["mvn", "org.owasp:dependency-check-maven:check", "-DdataDirectory=/dependency-check/data"]
