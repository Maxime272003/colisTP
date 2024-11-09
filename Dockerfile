FROM jboss/wildfly:latest

# Copier le driver PostgreSQL
COPY postgresql-42.7.4.jar /opt/jboss/wildfly/modules/system/layers/base/org/postgresql/main/
COPY module.xml /opt/jboss/wildfly/modules/system/layers/base/org/postgresql/main/

# Copier le fichier de configuration standalone.xml modifié
COPY standalone.xml /opt/jboss/wildfly/standalone/configuration/

# Copier le fichier EAR de votre application
COPY target/colis-ear-1.0-SNAPSHOT.ear /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
