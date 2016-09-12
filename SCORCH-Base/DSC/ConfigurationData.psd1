@{
	AllNodes = @(
       @{
            NodeName="*"
            RetryCount = 30
            RetryIntervalSec = 30
			PSDscAllowDomainUser = $true
			PSDscAllowPlainTextPassword = $true		
         },

		@{
			NodeName = 'ORCH-DC01'
			PSDscAllowDomainUser = $true
			PSDscAllowPlainTextPassword = $true
			DomainName = 'scorch.lab'
            DomainNetBIOSName = 'scorch'
			DNSServerAddress = '10.0.0.4'
            InterfaceAlias = 'Ethernet'
            AddressFamily = 'IPv4'
			SqlSourcePath = "C:\SQLServer_12.0_Full"
			SysAdminAccounts = 'scorch\s-admin'
		},
		@{
			NodeName = 'ORCH-MS01'
			PSDscAllowDomainUser = $true
			PSDscAllowPlainTextPassword = $true
			DomainName = 'scorch.lab'
            DomainNetBIOSName = 'scorch'
			DNSServerAddress = '10.0.0.4'
            InterfaceAlias = 'Ethernet'
            AddressFamily = 'IPv4'
			SqlSourcePath = "C:\SQLServer_12.0_Full"
			SysAdminAccounts = 'scorch\s-admin'
		}
	)
}
