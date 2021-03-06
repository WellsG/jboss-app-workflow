# jboss-app-workflow

````
.
├── db
│   ├── init_data.sh
│   └── maitai_docker.sql
├── docker-compose.yml
├── jboss-app
│   └── maitai-server-ear.ear
└── jboss-as
    ├── bin
    │   └── init_maitai.sh
    ├── maitai
    │   ├── bin
    │   │   └── maitai_start.sh
    │   └── etc
    │       └── maitai.conf
    ├── modules
    │   └── com
    │       └── mysql
    │           └── main
    │               ├── module.xml
    │               ├── mysql-connector-java-5.1.7-bin.jar
    │               └── mysql-connector-java-5.1.7-bin.jar.index
    └── standalone-full.xml
````
* Get sepcific config and war
````
./fetch.sh
````

* build [jboss-as image](https://github.com/WellsG/jboss-as-docker)  or ref the remote image: [jind0001/jboss-as:7.1.1](https://cloud.docker.com/repository/docker/jind0001/jboss-as)
* update docker-compose.yml 
````
image: "wguo/jboss-7.1.1:<image sha>"  or image: "jind0001/jboss-as:7.1.1"
````
* sudo docker-compose up
````
[~/docker/jboss-7.1.1.Final-docker] (master) $ sudo docker-compose ps
             Name                          Command             State                Ports               
-------------------------------------------------------------------------------------------------------
jboss711finaldocker_jboss-as_1   tail -f /dev/null             Up      0.0.0.0:8080->8080/tcp, 9990/tcp 
jboss711finaldocker_mysql_1      docker-entrypoint.sh mysqld   Up      0.0.0.0:3306->3306/tcp
````
* access container 
````
sudo docker-compose exec jboss-as sh
sudo docker-compose exec mysql sh
````
* start app
````
sudo docker-compose exec jboss-as sh
sh-4.2# /var/lib/jboss-as/bin/init_maitai.sh
sh-4.2# /opt/jboss/jboss-as-7.1.1.Final/bin/maitai_start.sh
````

* fetch the source code
* commit the changes and run the maven build
````
mvn clean install -P devLocal -Dmaven.test.skip=true
````
* copy the .ear into jboss deployment 

