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

[JBoss as images](https://github.com/WellsG/jboss-as-docker)  
