# tud-cybersec-java-lab
A Docker-based solution to run the __JavaVulnerableLab__ for the TUD Cyber Security course

## Setup
### Prerequisites
1. Installed [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Installed [Maven](https://maven.apache.org/)
3. Set your __"JAVA_HOME"__ environment variable to point to a Java 8 SDK (the Tomcat image uses _"openjdk 17.0.6"_ but the war file __must__ be built with Java 8)

### Setup Script
To setup the JavaVulnerableLab, run the setup script if you're on on __macOS__, __Linux__ or __WSL__:

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
The above configuration starts the __JavaVulnerableLab__ in _debug mode_ by default. To connect to it:
1. Open the __JavaVulnerableLab__ project in __IntelliJ__
2. In the IntelliJ top-level menu, select _"Run"_ -> _"Edit Configurations..."_
3. Click _'+'_ -> _"Add New Configuration"_ -> _"Remote JVM Debug"_
4. Select _"Attach to remote JVM"_ for _"Debugger Mode"_
5. Select _"Socket"_ for _"Transport"_
6. Enter _"localhost"_ for _"Host"_
7. Enter _"8000"_ for _"Port"_
8. Select _"JDK 9 or later"_ beside _"Command line arguments for remote JVM"_
9. Select _"JavaVulnerableLab"_ for _"Use module classpath"_
10. Click _"Apply"_ and then _"Ok"_

## Optional Step - Manage the Database with MySQL Workbench
### Prerequisites
Install [MySQL Workbench](https://www.mysql.com/products/workbench/)

### Add the MySQL Connection
1. Run _MySQL Workbench_
2. Click the _'+'_ symbol beside _MySQL Connections_
3. Enter _tud-cybersec-java-lab_ for _Connection Name_ 
4. Keep default values and click _Store in Vault ..._
5. Enter _"root"_ for the root password
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

## Todo
Add a third container with Java and Maven. Load the lab code into that container, build the war and then copy it to a shared volume accessible by the Tomcat container. Make this third container a dependency such that the Tomcat container won't start up before the war file is accessible on the shared volume. The setup script can then be removed. This removes Java and Maven as dependencies and isolates the packaging step from the deploy and run steps. Once this is setup then the lab code can be moved to an external git repo. This will truly make the Java lab a one-click install for the user.
