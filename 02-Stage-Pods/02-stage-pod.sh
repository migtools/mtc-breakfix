#!/bin/bash

current_image=$(oc get configmap -n openshift-migration migration-cluster-config -o go-template --template="{{ .data.STAGE_IMAGE }}{{ println }}")

echo "$current_image" >> current_image

oc patch migrationcontroller/migration-controller \
  -n openshift-migration \
  --type merge \
  -p '{ "spec": {"migration_stage_image_fqin": "quay.io/konveyor/invalid_image:latest" }}'

oc delete -n openshift-migration configmap/migration-cluster-config

