#! /bin/bash
# Build application war file and copy it to artifacts folder
mvn clean package --quiet --file JavaVulnerableLab/pom.xml
cp ./JavaVulnerableLab/target/JavaVulnerableLab.war ./artifacts/JavaVulnerableLab.war