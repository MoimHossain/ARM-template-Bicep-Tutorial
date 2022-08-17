
## Prepare
```
az group create --name xyz-resources --location westeurope --tags Purpose=Demo Production=NO --managed-by "moim.hossain@microsoft.com"
```

# Template Spec file (ts.json)
```
az ts create --name storageSpec --version "1.0a" --resource-group xyz-resources --location "westeurope" --template-file ts.bicep
```

```
az ts list --resource-group xyz-resources
```

```
az ts show --name storageSpec --resource-group xyz-resources --version "1.0a"
```

# Deploy a TS

```
id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/templateSpecsRG/providers/Microsoft.Resources/templateSpecs/storageSpec/versions/1.0a"

az deployment group create --resource-group xyz-resources --template-spec $id
```


> You can also create TS as regular Bicep resource, example ```ts-as-bicep.bicep```, but the template itself is in JSON