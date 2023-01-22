FROM maven:3.8.7-eclipse-temurin-17-focal

#RUN mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
#RUN cd my-app && mvn org.owasp:dependency-check-maven:check update-only && cd ..
RUN mvn org.owasp:dependency-check-maven:update-onlya

ENTRYPOINT ["mvn", "org.owasp:dependency-check-maven:check", "-DdataDirectory=/dependency-check/data"]
