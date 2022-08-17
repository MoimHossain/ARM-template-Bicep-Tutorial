
## Prepare
```
az group create --name xyz-resources --location westeurope --tags Purpose=Demo Production=NO --managed-by "moim.hossain@microsoft.com"
```

# Template Spec file (ts.json)
```
az ts create --name storageSpec --version "1.0a" --resource-group xyz-resources --location "westeurope" --template-file ts.json
```

```
az ts list --resource-group xyz-resources
```

```
az ts show --name storageSpec --resource-group xyz-resources --version "1.0a"
```


> You can also create TS as regular ARM resource, example ```ts-as-arm.json```