# tud-cybersec-java-lab
A Docker-based solution to run the __JavaVulnerableLab__ for the TUD Cyber Security course

## Setup
### Prerequisites
Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Setup Docker
1. Start _Docker Desktop_
2. Run `docker compose up`

### Install Data
1. Open: [http://localhost:8080/JavaVulnerableLab/install.jsp](http://localhost:8080/JavaVulnerableLab/install.jsp)
2. Replace the __JDBC URL__ String with `jdbc:mysql://mysql:3306/abc`
3. Click _Install_

## Optional Step - Debug with IntelliJ
The above configuration starts the __JavaVulnerableLab__ in _debug mode_ by default. To connect to it:
1. Open in __IntelliJ__
2. Select _"Run"_ -> _"Edit Configurations..."_
3. Click _'+'_ -> _"Add New Configuration"_ -> _"Remote JVM Debug"_
4. Select _"Attach to remote JVM"_ for _"Debugger Mode"_
5. Select _"Socket"_ for _"Transport"_
6. Enter _"localhost"_ for _"Host"_
7. Enter _"8000"_ for _"Port"_
8. Select _"JDK 9 or later"_ beside _"Command line arguments for remote JVM"_
9. Select _"JavaVulnerableLab"_ for _"Use module classpath"_
10. Click _"Ok"_

## Optional Step - Manage the Database with MySQL Workbench
### Prerequisites
Install [MySQL Workbench](https://www.mysql.com/products/workbench/)

### Add the MySQL Connection
1. Run _MySQL Workbench_
2. Click the _'+'_ symbol beside _MySQL Connections_
3. Enter _tud-cybersec-java-lab_ for _Connection Name_ 
4. Click _Store in Vault ..._
5. Enter _"root"_ for the root password
6. Click _Ok_

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
To delete the lab run: `docker compose down`
