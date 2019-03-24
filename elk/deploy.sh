#!/bin/bash
#Can Alptekin
#Description: All Yaml AUto

START_CALL="kubectl apply -f" 

/bin/echo " Starting" 

${START_CALL} psc.yaml
${START_CALL} k8configmap.yaml
${START_CALL} service.yaml
${START_CALL} servicediscovery.yaml
${START_CALL} kibanaconfigmap.yaml
${START_CALL} statefulset.yaml
${START_CALL} kibanaservice.yaml
${START_CALL} kibanadeployment.yaml
${START_CALL} logstashconfigmap.yaml
${START_CALL} logstashservice.yaml
${START_CALL} logstashdeployment.yaml

 /bin/echo " Successful" 