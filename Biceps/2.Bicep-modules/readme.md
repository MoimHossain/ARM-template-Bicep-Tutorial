
```
az group create --name czrgpbicep1 --location westeurope --tags Purpose=Demo Production=NO --managed-by "moim.hossain@microsoft.com"
```

```
bicep build .\appPlan.bicep
```


# Direct deploy with az (WSL stable)

```
az deployment sub create -f main.bicep -l westeurope
```

# Decompilations
```
az bicep decompile -f arm/site.json
```