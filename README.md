# tud-cybersec-java-lab
A Docker-based solution for getting __JavaVulnerableLab__ up and running easily

## Prerequisite
1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Install [MySQL Workbench](https://www.mysql.com/products/workbench/) (optional)

## Setup
1. Run _Docker Desktop_
2. Build __JavaVulnerableLab.war__
3. Move __JavaVulnerableLab.war__ to _tud-cybersec-java-lab/artifacts/JavaVulnerableLab.war_
4. Run `docker-compose up` from __tud-cybersec-java-lab_
5. Open: [http://localhost:8080/JavaVulnerableLab/install.jsp](http://localhost:8080/JavaVulnerableLab/install.jsp)
6. Replace `jdbc:mysql://mysql:3306/` with `jdbc:mysql://mysql:3306/abc` for __JDBC URL__
7. Click _Install_

## Optional Steps
### Manage the Database with MySQL Workbench
1. Run _MySQL Workbench_
2. Click the '+' symbol beside _MySQL Connections_
3. Set a _Connection Name_
4. Keep the default values and click _Store in Vault ..._
5. Enter 'root' as the root password
6. Click _Ok_
7. Click _Test Connection_
8. If _Test Connection_ succeeds, click _Ok_
