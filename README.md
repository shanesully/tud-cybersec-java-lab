# tud-cyber-security-java-lab
A Docker-based setup to get a Java lab required for college up and running easily

## Setup
1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Build your __war file__ and place it in the _artifacts_ directory (don't modify the source code)
3. Run from project directory: `docker-compose up`
4. Open in browser: [http://localhost:8080/JavaVulnerableLab/install.jsp](http://localhost:8080/JavaVulnerableLab/install.jsp)
5. For __JDBC URL__ replace `jdbc:mysql://mysql:3306/` with `jdbc:mysql://mysql:3306/abc`
6. Click _Install_

## Optional
### View Database using MySQL Workbench
1. Install [MySQL Workbench](https://www.mysql.com/products/workbench/)
2. Run _MySQL Workbench_
3. Click the '+' symbol beside _MySQL Connections_
4. Input a value for _Connection Name_
5. Keep the default values and click _Store in Vault ..._
6. For this the sake of this lab, use 'root' for the default password
7. Click _Ok_
8. Click _Test Connection_
9. If _Test Connection_ succeeded, click _Ok_
10. Interract with your database as normal