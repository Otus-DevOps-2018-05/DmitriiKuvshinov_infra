# DmitriiKuvshinov_infra
DmitriiKuvshinov Infra repository
ssh -i /Users/user/.ssh/appuser -At appuser@35.204.237.76 'ssh 10.164.0.2'

To connect with alias need:
edit local file in user folder .ssh/config
	add:
		Host external
		user appuser
		HostName Public_IP_Address

On bastion host edit:
	/home/appuser/.ssh/config
	
	add:
		Host insternal
		HostName Internal_IP_Address

Connect from local console: ssh external 'ssh internal'

bastion_IP = 35.204.98.75
someinternalhost_IP = 10.164.0.2
