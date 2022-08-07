#$templateFile = ".\webapp.json"
#$parameterFile=".\webapp.parameters.dev.json"

$templateFile = "C:\Users\Vipin Gupta\Desktop\Static Web App -Deployment\webapp.json"
$parameterFile="C:\Users\Vipin Gupta\Desktop\Static Web App -Deployment\webapp.parameters.dev.json"


$resourcegroup = Read-Host -Prompt "Enter a Resource Group name"
$region = Read-Host -Prompt "Enter the location"
New-AzResourceGroup -Name $resourcegroup -Location $region -Force

New-AzResourceGroupDeployment `
  -ResourceGroupName $resourcegroup `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile
