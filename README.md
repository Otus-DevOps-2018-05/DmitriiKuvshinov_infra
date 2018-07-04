# DmitriiKuvshinov_infra
DmitriiKuvshinov Infra repository
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

