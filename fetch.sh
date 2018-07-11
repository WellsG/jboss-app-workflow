#! /bin/sh

if [ $1 ]; then
   echo ""
else
   echo "Please specify the app_repo."
   exit
fi

APP_REPO="$1/jboss-7.1.1.Final-docker"

wget -O db/maitai_docker.sql $APP_REPO/db/maitai_docker.sql

mkdir jboss-as/maitai/etc
wget -O jboss-as/maitai/etc/maitai.conf $APP_REPO/jboss-as/maitai/etc/maitai.conf
wget -O jboss-as/standalone-full.xml $APP_REPO/jboss-as/standalone-full.xml

mkdir jboss-app
wget -O jboss-app/maitai-server-ear.ear $APP_REPO/jboss-app/maitai-server-ear.ear
