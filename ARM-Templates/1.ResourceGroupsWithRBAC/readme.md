

```
 az deployment sub create -l westeurope --template-file .\arm.json --parameters .\param.json
```



## Additional commands

Creating a new SP
```
az ad sp create-for-rbac -n "MOHOSSA-De
mo-Automation-SP"
```

Show SP's Object ID:
```
az ad sp show --id 20d84c0a-82a9-4c23-9a87-1a2723519380
```
Use the Object ID in param.json file, deploy again:


```
 az role assignment list --resource-group demo-resource-group-rbac
```
