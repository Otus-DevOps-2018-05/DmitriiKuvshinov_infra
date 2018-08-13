# DmitriiKuvshinov_infra
DmitriiKuvshinov Infra repository
cloud-testapp
To create new instance need: run create_instance enter_name_of_instace
Startup script will upload from local repository


## ДЗ 3

<b> Для подключения к локальной машине через бастион:</b>

```
ssh -i /Users/user/.ssh/appuser -At appuser@35.204.237.76 'ssh 10.164.0.2'
```

## ДЗ 3

<b> Для подключения к локальной машине через бастион:</b>

```
ssh -i /Users/user/.ssh/appuser -At appuser@35.204.237.76 'ssh 10.164.0.2'
```

<b> To connect with alias need: </b>
```
edit local file in user folder .ssh/config
	add:
		Host external
		user appuser
		HostName Public_IP_Address
```
On bastion host edit:
	/home/appuser/.ssh/config

Connect from local console: ssh external 'ssh internal'
```
bastion_IP = 35.204.98.75
someinternalhost_IP = 10.164.0.2


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
```

<b> Bash скрипт для создания истанса с указанием имени </b>

```
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

## ДЗ 6
<b> Выполнено основное </b>
Настроено параметризованное задание управления ИТ с использованием terraform

## ДЗ 7

<b> Выполнено основное </b>
В ходе работы был однят тестовый стенд из ДЗ 6

При выполнении команды 
```
$ terraform apply
google_compute_instance.app: Refreshing state... (ID: reddit-app)
...
* google_compute_firewall.firewall_ssh: 1 error(s) occurred:
* google_compute_firewall.firewall_ssh: Error creating firewall: googleapi: Error 409:
The resource 'projects/infra-179014/global/firewalls/default-allow-ssh' already exists,
alreadyExists
```
Возникла ошибка, т.к. такое правило уже сущетсвует

Настроено разворачивание инфраструкртуры с помощью конфигов и шаблонов с использованием terraform, но в добавок к предыдущему ДЗ, были параметрищированы правила firewall
Также сделано разбиение инфраструктуры на модули


## ДЗ 8

<b> Знакомство с Ansible </b>
В процессе выполениния был развернута инфраструктура stage
Рассмотрена работа с inventory и ее параметризацией

```
ansible app -m command -a 'rm -rf ~/reddit' && ansible-playbook clone.yml
```
Исзвенился статус <b>changed=1</b>. Плейбук выполнился, а т.к. папка была (после удаления из нее файлов) была пуста - статус поля changed изменился.

<b>Задание со *</b>
JSON инвентори должен содержать информацию о хостах в определенном формате
статья: https://www.jeffgeerling.com/blog/creating-custom-dynamic-inventories-ansible

Вызов инвентори исполняемого файла для вывода JSON осуществляется с параметром --list
В итоге получем запуск ansible с динамеческим инвентори: 
```
ansible all -i ./inventory.sh -m ping
```
или можно внести ./inventory.sh в ansible.cfg и использовать просто вызов ansible all -m ping
=======
Настроено развертывание инфраструкртуры с помощью конфигов и шаблонов с использованием terraform, но в добавок к предыдущему ДЗ, были параметрищированы правила firewall
Также сделано разбиение инфраструктуры на модули
```
  --metadata-from-file startup-script=script/startup_puma.sh
```
