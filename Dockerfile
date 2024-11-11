FROM jboss/wildfly:25.0.0.Final
EXPOSE 8080
COPY ./SampleWebApp.war /opt/jboss/wildfly/standalone/deployments/
