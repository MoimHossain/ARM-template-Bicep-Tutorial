@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_ZRS'
  'Premium_LRS'
])
param storageAccountType string = 'Standard_LRS'
param location string = resourceGroup().location

resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name:  'store${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: storageAccountType
  }
  kind:'StorageV2'
}
