# i820_infra
i820 Infra repository

ssh -J i820@bastion_adress i820@remote_adress

~/.ssh/config
Host someinternalhost
  HostName remote_adress
  ProxyCommand ssh i820@bastion_adress -W %h:%p

ssh i820@someinternalhost

organization = Otus
user = test
server = Otus_server
bastion_IP = 51.250.91.7
someinternalhost_IP = 10.128.0.25

testapp_IP = 51.250.94.213
testapp_port = 9292

Создан шаблон для Packer, переменные вынесены в variables.json

PLAY RECAP 
**************************************************************
appserver : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
Вывод изменился так как выпонлилась команда клонирования репозитория, в предыдущем выполнении не копировались файлы, так как папка уже существовала
