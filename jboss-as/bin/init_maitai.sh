cd /opt/jboss/jboss-as-7.1.1.Final

echo '************* standalone-full.xml *****************'
cp /var/lib/jboss-as/standalone-full.xml standalone/configuration/

echo '************* maitai_start.sh *****************'
cp /var/lib/jboss-as/maitai/bin/maitai_start.sh bin/

echo '************* maitai.conf *****************'
cp /var/lib/jboss-as/maitai/etc/maitai.conf /etc/

echo '************* mysql modules *****************'
mkdir modules/com/mysql
mkdir modules/com/mysql/main
cp /var/lib/jboss-as/modules/com/mysql/main/* modules/com/mysql/main

echo '************* create soft link *****************'
ln -s /var/lib/jboss-app/maitai-server-ear.ear standalone/deployments/maitai-server-ear.ear
