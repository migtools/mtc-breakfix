#!/bin/bash

img=$(cat current_image)

echo "$img"

oc patch migrationcontroller/migration-controller \
  -n openshift-migration \
  --type merge \
  -p '{ "spec": {"migration_stage_image_fqin": "'$img'" }}'

rm current_image
