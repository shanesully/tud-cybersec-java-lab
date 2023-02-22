# tud-cyber-security-java-lab
A Docker-based setup to get a Java lab required for college up and running easily

## Setup
1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Create a directory named _artifacts_ in project root
3. Build your __war file__ and place it in the _artifacts_ directory (don't modify the source code)
4. Run from project root: `docker-compose up`
5. Open in browser: [http://localhost:8080/JavaVulnerableLab/install.jsp](http://localhost:8080/JavaVulnerableLab/install.jsp)
6. For __JDBC URL__ replace `jdbc:mysql://mysql:3306/` with `jdbc:mysql://mysql:3306/abc`
7. Click _Install_

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