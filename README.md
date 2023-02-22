# tud-cybersec-java-lab
A Docker-based solution for getting __JavaVulnerableLab__ up and running

## Setup
### Prerequisites
1. Installed [Docker Desktop](https://www.docker.com/products/docker-desktop/)
3. Downloaded _JavaVulnerableLab.zip_ from _Lab2- Java- Vulnerable-LabAssignment_ on Moodle

### Build JavaVulnerableLab.war
1. Extract _JavaVulnerableLab.zip_
2. Run `mvn clean package` from the _JavaVulnerableLab_ directory
3. Move _JavaVulnerableLab/target/JavaVulnerableLab.war_ to _tud-cybersec-java-lab/artifacts/JavaVulnerableLab.war_

### Setup Docker
1. Start _Docker Desktop_
2. Run `docker compose up` from the _tud-cybersec-java-lab_ directory

### Install Data
1. Open in browser: [http://localhost:8080/JavaVulnerableLab/install.jsp](http://localhost:8080/JavaVulnerableLab/install.jsp)
2. Replace the __JDBC URL__ String with `jdbc:mysql://mysql:3306/abc`
3. Click _Install_

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