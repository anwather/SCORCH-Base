Configuration Main
{

Param(
[string]
$NodeName = 'localhost',

[PSCredential]
$DomainAdminCredentials
)

Import-DscResource -ModuleName PSDesiredStateConfiguration,xComputerManagement,xSQLPS

Node $nodeName
  {
   
  }

}