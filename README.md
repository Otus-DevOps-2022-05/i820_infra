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
