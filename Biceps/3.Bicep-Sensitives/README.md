# Key vault to keep secrets

If existing Key vault?

```
az keyvault update  --name ExampleVault --enabled-for-template-deployment true
```

Or, creating a new one:

```
az group create --name ExampleGroup --location centralus
az keyvault create \
  --name ExampleVault \
  --resource-group ExampleGroup \
  --location centralus \
  --enabled-for-template-deployment true
az keyvault secret set --vault-name ExampleVault --name "ExamplePassword" --value "hVFkk965BuUv"
```

If service principal based deployment (pipeline):
```
az keyvault set-policy \
  --upn <user-principal-name> \
  --name ExampleVault \
  --secret-permissions set delete get list
```

## Grant role to read secrets
```
az role definition create --role-definition "<path-to-role-file>"
az role assignment create \
  --role "Key Vault Bicep deployment operator" \
  --scope /subscriptions/<Subscription-id>/resourceGroups/<resource-group-name> \
  --assignee <user-principal-name>
```

## Now use ```getSecret()``` function from Key vault

See ```main.bicep```

> You can optionally use param.json file to reference key vault secrets as well