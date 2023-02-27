# tud-cybersec-java-lab
A Docker-based solution to run the __JavaVulnerableLab__ for the TUD Cyber Security course

## Setup
### Prerequisites
1. Installed [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Installed [Maven](https://maven.apache.org/)
3. Set your __"JAVA_HOME"__ environment variable to point to a Java 8 SDK (the Tomcat image uses "openjdk 17.0.6" but the war file _must_ be built with Java 8)

### Setup Script
To setup the JavaVulnerableLab, run the setup script if you're on on macOS, Linux or WSL:

```./setup.sh```

This will build the Maven project and move the resulting war file to the artifacts directory

### Setup Docker
1. Start _Docker Desktop_
2. Run `docker compose up` from the _tud-cybersec-java-lab_ directory after running the setup script ("artifacts/JavaVulnerableLab.war" exists)

### Install Data
1. Open in browser: [http://localhost:8080/JavaVulnerableLab/install.jsp](http://localhost:8080/JavaVulnerableLab/install.jsp)
2. Replace the __JDBC URL__ String with `jdbc:mysql://mysql:3306/abc`
3. Click _Install_

## Optional Step - Attach to IntelliJ Debugger
The above configuration starts the JavaVulnerableLab in debug mode by default. To connect to it:
1. Open the JavaVulnerableLab project in IntelliJ
2. In the IntelliJ top-level menu, select "Run" -> "Edit Configurations..."
3. Click '+' -> "Add New Configuration" -> "Remote JVM Debug"
4. Select "Attach to remote JVM" for "Debugger Mode"
5. Select "Socket" for "Transport"
6. Enter "localhost" for "Host"
7. Enter "8000" for "Port"
8. Select "JDK 9 or later" beside "Command line arguments for remote JVM"
9. Select "JavaVulnerableLab" for "Use module classpath"
10. Click "Apply" and then "Ok"

## Optional Step - Manage the Database with MySQL Workbench
### Prerequisites
Install [MySQL Workbench](https://www.mysql.com/products/workbench/)

### Add the MySQL Connection
1. Run _MySQL Workbench_
2. Click the '+' symbol beside _MySQL Connections_
3. Enter _tud-cybersec-java-lab_ for _Connection Name_ 
4. Keep default values and click _Store in Vault ..._
5. Enter "root" for the root password
6. Click _Ok_
7. Click _Test Connection_
8. If _Test Connection_ succeeds, click _Ok_

### Query the abc Database
Run the following in the _MySQL Workbench_ query editor:
```
USE `abc`;
SHOW TABLES;
```

Should return:
```
cards
FilesList
Messages
posts
tdata
UserMessages
users
```

### Query the trump Database
Run the following in the _MySQL Workbench_ query editor:
```
USE `trump`;
SHOW TABLES;
```

Should return:
```
carddetail
posts
users
```

## Teardown
To teardown the lab environment run: `docker compose down`