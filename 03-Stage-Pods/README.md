# Exercise 3 : Stage Pod Failures

When filesystem copy mode is selected, MTC makes use of temporary pods which attach the PVs and trigger a filesystem copy through Restic. In this exercise, we will trigger a failure in the Stage Pods and try to fix the issue manually. This exercise only works post MTC 1.2.5 versions.

## Prepare 

MTC uses `migration-cluster-config` configmap to allow users to modify image used for temporary stage pods. 

Login to your source cluster and edit the configmap using:

```sh
./03-stage-pod.sh
```

Once done, continue migrating your workloads from the source cluster. The migration will fail at `StagePodsCreated` stage.

## Fix
 
Restore the stage pod image using: 

```sh
./03-stage-pod-restore.sh
```
