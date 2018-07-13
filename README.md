# DmitriiKuvshinov_infra
DmitriiKuvshinov Infra repository
cloud-testapp
To create new instance need: run create_instance enter_name_of_instace
Startup script will upload from local repository


## ДЗ 3
```
<b> Для подключения к локальной машине через бастион:</b>

ssh -i /Users/user/.ssh/appuser -At appuser@35.204.237.76 'ssh 10.164.0.2'
```

<b> To connect with alias need: </b>
```
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
```

## ДЗ 4
Адрес ВМ:
testapp_IP = 35.204.119.186
testapp_port = 9292

<b> Команда для добавления правила файрволла:</b>
```
gcloud compute firewall-rules create puma-default-server --target-tags="puma-server" --source-ranges="0.0.0.0/0" --allow tcp:9292


<b> Bash скрипт для создания истанса с указанием имени </b>

<b> Bash скрипт для создания истанса с указанием имени </b>

#!/bin/bash
/Users/user/Downloads/google-cloud-sdk/bin/gcloud compute instances create ${1}\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags kuvshinov-server \
  --restart-on-failure \
  --metadata-from-file startup-script=script/startup_puma.sh
```
## ДЗ 5
Работа с образами VM в облаке. Знакомство с Packer и экосистемой компании HashiCorp.
Для создания base образа необходимо запустить билд пакера с параметром -var-file=variables.json
Для задания со * необходимо из папки files запустить crate-reddit-vm.sh
Немного изменил структуру папок, но заметил это уже поздно =(


## ДЗ 6
<b> Выполнено основное </b>
Настроено параметризованное задание управления ИТ с использованием terraform

## ДЗ 7
<b> Выполнено основное задание </b>
Принципы организации инфраструктурного кода и работа над инфраструктурой в команде на примере Terraform

