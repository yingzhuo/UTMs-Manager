usage:
	@cat $(CURDIR)/usage.txt

github:
	@find $(CURDIR) -name '.DS_Store' -delete
	@git add .
	@git commit -m "$(shell /bin/date "+%F %T")"
	@git push

ping:
	@ansible all -m ping

setup-mysql:
	@ansible-playbook $(CURDIR)/01-SetupMySQL.yaml

setup-redis:
	@ansible-playbook $(CURDIR)/02-SetupRedis.yaml --tags setup

startup-redis:
	@ansible-playbook $(CURDIR)/02-SetupRedis.yaml --tags startup

stop-redis:
	@ansible-playbook $(CURDIR)/02-SetupRedis.yaml --tags stop

setup-ssh:
	@ansible-playbook $(CURDIR)/98-SetupSSH.yaml

setup-ubuntu:
	@ansible-playbook $(CURDIR)/99-SetupUbuntu.yaml

.PHONY: usage github \
	ping \
	setup-mysql \
	setup-redis startup-redis stop-redis \
	setup-ssh \
	setup-ubuntu
