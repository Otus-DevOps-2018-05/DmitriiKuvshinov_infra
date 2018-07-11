# DmitriiKuvshinov_infra
DmitriiKuvshinov Infra repository
cloud-testapp
To create new instance need: run create_instance enter_name_of_instace
Startup script will upload from local repository


#ДЗ 4
Адрес ВМ:
testapp_IP = 35.204.119.186
testapp_port = 9292

Команда для добавления правила файрволла: gcloud compute firewall-rules create puma-default-server --target-tags="puma-server" --source-ranges="0.0.0.0/0" --allow tcp:9292

Bash скрипт для создания истанса с указанием имени

#!/bin/bash
/Users/user/Downloads/google-cloud-sdk/bin/gcloud compute instances create ${1}\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags kuvshinov-server \
  --restart-on-failure \
  --metadata-from-file startup-script=script/startup_puma.sh

=======
ssh -i /Users/user/.ssh/appuser -At appuser@35.204.237.76 'ssh 10.164.0.2'

To connect with alias need:
edit local file in user folder .ssh/config
	add:
		Host external
		user appuser
		HostName Public_IP_Address

On bastion host edit:
	/home/appuser/.ssh/config
	

Connect from local console: ssh external 'ssh internal'

bastion_IP = 35.204.98.75
someinternalhost_IP = 10.164.0.2

