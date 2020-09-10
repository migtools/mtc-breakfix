# Exercise 2 : GVK Incompatibility

MTC can detect incompatible API versions between the source and the destination cluster. This exercise will demonstrate these capabilities.

## Prepare 

To perform this exercise, we will deploy a demo app on the source cluster. This app uses a deprecated API which is not available in OpenShift 4.4+ versions.

Login to your source cluster and deploy the demo app:

```sh
oc apply -f 02-gvk.yml
```

This will create a new namespace `mig-gvk-demo` on your source cluster. In the next steps, we will try to migrate this namespace.

## Migrate GVK incompatible namespace

On your destination cluster, create a new MigPlan to migrate namespace `mig-gvk-demo`. 

Since the namespace contains resources that are incompatible on your destination cluster, you will see a warning about GVK incompatibility in the MigPlan creation wizard. You will have to manually convert the app on your source cluster to a compatible API version before you can migrate it. 



