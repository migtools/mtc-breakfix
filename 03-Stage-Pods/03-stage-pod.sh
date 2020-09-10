#!/bin/bash

current_image=$(oc get configmap migration-cluster-config -o go-template --template="{{ .data.STAGE_IMAGE }}{{ println }}")

echo "$current_image" >> .current_image

oc patch configmap/migration-cluster-config \
  -n openshift-migration \
  --type merge \
  -p '{ "data": {"STAGE_IMAGE": "quay.io/konveyor/invalid_image:latest" }}'



