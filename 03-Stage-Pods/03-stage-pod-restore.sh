#!/bin/bash

img=$(cat .current_image)

echo "$img"

oc patch configmap/migration-cluster-config \
  -n openshift-migration \
  --type merge \
  -p '{ "data": { "STAGE_IMAGE": "'$img'" } }'

