# Exercise 1 : Misconfiguration

This exercise helps users create misconfigured MTC custom resources. The users are expected to fix the misconfigured resources to drive a successful migration.

## Create CRs

Login to your destination cluster and create the CRs using:

```sh
oc apply -f 01-misconfig.yml
```

### Fix

#### Fix MigCluster

Use MTC UI to find MigCluster named `source-cluster`. Fix the MigCluster resource by using the right saToken, and the cluster URL. 

#### Fix MigStorage

Use MTC UI to find Replication Repository named `s3-repository`. Use the right bucket name and the AWS access keys to fix the repository.
