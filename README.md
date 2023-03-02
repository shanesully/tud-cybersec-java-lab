# tud-cybersec-java-lab
A Docker-based solution to run the __JavaVulnerableLab__ for the TUD Cyber Security course

## Setup
### Prerequisites
Install and run [Docker Desktop](https://www.docker.com/products/docker-desktop/)
Initialize submodules: `git submodule update --init --recursive`

### Create Lab
Run `docker compose up`

### Destroy Lab
Run: `docker compose down`

### Install Data
1. Open: [http://localhost:8080/JavaVulnerableLab/install.jsp](http://localhost:8080/JavaVulnerableLab/install.jsp)
2. Replace the __JDBC URL__ String with `jdbc:mysql://mysql:3306/abc`
3. Click _Install_

## Optional Step - Debug with IntelliJ
The above configuration starts the __JavaVulnerableLab__ in _debug mode_ by default. To connect to it:
1. Open the project in __IntelliJ__
2. Select _Run_ -> _Edit Configurations..._
3. Select _+_ -> _Add New Configuration_ -> _Remote JVM Debug_
4. Select _Debugger Mode_ -> _Attach to remote JVM_
5. Select _Transport_ -> _Socket_ 
6. Select _Host_ -> _localhost_
7. Select _Port_ -> _8000_
8. Select _JDK 9 or later_ beside _Command line arguments for remote JVM_
9. Select _Use module classpath_ -> _java-vulnerable-lab_
10. Select _"Ok"_

## Optional Step - Manage the Database with MySQL Workbench
### Prerequisites
Install and run [MySQL Workbench](https://www.mysql.com/products/workbench/)

### Add the MySQL Workbench Connection
1. Select _+_ beside _MySQL Connections_
2. Select _Connection Name_ -> _tud-cybersec-java-lab_
3. Select _Username_ -> _root_
4. Select _Store in Vault ..._ -> _Password_ -> _root_
5. Select _Ok_ for the _Store Password for Connection_ dialog
6. Select _Ok_ for the _Setup New Connection_ dialog

### Check Databases
With _MySQL Workbench_ open, after completing the _Install Data_ step above

Execute Query:
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

Query:
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
