# SampleWebAppdocker 


### Run initial wildfly container
```
run --name wildfly --rm -p 8080:8080 -p 9990:9990 \
-v /tmp/war:/opt/jboss/wildfly/standalone/deployments/ \
-it quay.io/wildfly/wildfly /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
```


### Build new image
```
docker build -t samplewebapp:0.1 .
```


### Run new container
```
docker run --name wildfly --rm -p 8080:8080 -p 9990:9990 \
-d samplewebapp:0.1 /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
```
