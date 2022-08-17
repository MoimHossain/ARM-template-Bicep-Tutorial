

```
az group create --name xyzrgpbicep1 --location westeurope --tags Purpose=Demo Production=NO --managed-by "moim.hossain@microsoft.com"
```


```
az deployment group create --name ExampleDeployment  --resource-group xyzrgpbicep1 --template-file main.bicep  --parameters param.json
```