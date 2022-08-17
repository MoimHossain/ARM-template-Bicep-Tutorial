targetScope = 'subscription'

param rgpName string = 'demo-rgp'
param planName string = 'demo-rgp-app-plan'
param location string = deployment().location

resource rg 'Microsoft.Resources/resourceGroups@2020-06-01' = {
  name: rgpName
  location: location
}

module appPlanDeploy 'appPlan.bicep' = {
  name: 'appPlanDeploy'
  scope: rg  
  params: {
    namePrefix:  planName
    location: location
    sku: 'B1'
  }
}

module siteDeploy 'site.bicep' = {
  name: 'siteDeploy'
  scope: rg
  params: {
    location: location
    appPlanId: appPlanDeploy.outputs.planId
    namePrefix: 'moimha2022'
    dockerImage: 'nginxdemo/hello'
    dockerImageTag: 'latest'
  }
}


// var websites = [
//   {
//     name: 'latestitem1'
//     tag: 'latest'
//   }
//   {
//     name: 'edgeitem1'
//     tag: 'plain-text'
//   }
// ]

// module siteDeploy 'site.bicep' = [for site in websites: {
//   name: '${site.name}siteDeploy'
//   scope: rg
//   params: {
//     appPlanId: appPlanDeploy.outputs.planId
//     namePrefix: site.name
//     dockerImage: 'nginxdemo/hello'
//     dockerImageTag: site.tag
//   }
// }]
