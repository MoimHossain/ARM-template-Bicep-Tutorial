
## Create resource group
```
az group create --name xyzrgpbicep1 --location westeurope --tags Purpose=Demo Production=NO --managed-by "moim.hossain@microsoft.com"
```

## What IF
```
az deployment group what-if --name ExampleDeployment  --resource-group xyzrgpbicep1 --template-file main.bicep  --parameters param.json
```

## Deploy
```
az deployment group create --confirm-with-what-if --name ExampleDeployment  --resource-group xyzrgpbicep1 --template-file main.bicep  --parameters param.json
```



# Compile

```
az bicep build -f main.bicep
```

## Decompile

```
az bicep decompile -f mainx.json
```

## Generate parameter file

```
az bicep generate-params --file {bicep_file}
```


## Export (migration cases)
```
az group export --name demoGroup > exportedtemplate.json
```
