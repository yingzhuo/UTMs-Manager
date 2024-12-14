usage:
	@cat $(CURDIR)/usage.txt

github:
	@find $(CURDIR) -name '.DS_Store' -delete
	@git add .
	@git commit -m "$(shell /bin/date "+%F %T")"
	@git push

ping:
	@ansible all -m ping -a "data=Hi"

setup-mysql:
	@ansible-playbook $(CURDIR)/PB-ManageMySQL.yaml --tags setup

startup-mysql:
	@ansible-playbook $(CURDIR)/PB-ManageMySQL.yaml --tags startup

stop-mysql:
	@ansible-playbook $(CURDIR)/PB-ManageMySQL.yaml --tags stop

restart-mysql:
	@ansible-playbook $(CURDIR)/PB-ManageMySQL.yaml --tags restart

setup-redis:
	@ansible-playbook $(CURDIR)/PB-ManageRedis.yaml --tags setup

startup-redis:
	@ansible-playbook $(CURDIR)/PB-ManageRedis.yaml --tags startup

stop-redis:
	@ansible-playbook $(CURDIR)/PB-ManageRedis.yaml --tags stop

restart-redis:
	@ansible-playbook $(CURDIR)/PB-ManageRedis.yaml --tags restart

setup-ssh:
	@ansible-playbook $(CURDIR)/PB-SetupSSH.yaml

setup-ubuntu:
	@ansible-playbook $(CURDIR)/PB-SetupUbuntu.yaml

.PHONY: usage github \
	ping \
	setup-mysql startup-mysql stop-mysql restart-mysql \
	setup-redis startup-redis stop-redis restart-redis \
	setup-ssh \
	setup-ubuntu
