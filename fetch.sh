#! /bin/sh
APP_REPO="$1/jboss-7.1.1.Final-docker"

mkdir jboss-as/maitai/etc
wget -O jboss-as/maitai/etc/maitai.conf $APP_REPO/jboss-as/maitai.conf
wget -O jboss-as/standalone-full.xml $APP_REPO/jboss-as/standalone-full.xml

mkdir jboss-app
wget -O jboss-app/maitai-server-ear.ear $APP_REPO/jboss-app/maitai-server-ear.ear
