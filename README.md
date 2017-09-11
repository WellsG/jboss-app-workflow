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

* build [jboss-as image](https://github.com/WellsG/jboss-as-docker)
* update docker-compose.yml 
````
image: "wguo/jboss-7.1.1:<image sha>"
````
* sudo docker-compose up
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
