usage:
	@cat $(CURDIR)/usage.txt

clean:
	@find $(CURDIR) -name '.DS_Store' -delete

github: clean
	@git add .
	@git commit -m "$(shell /bin/date "+%F %T")"
	@git push

ping:
	@ansible all -m ping

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

setup-docker:
	@ansible-playbook $(CURDIR)/PB-ManageDocker.yaml --tags setup

startup-docker:
	@ansible-playbook $(CURDIR)/PB-ManageDocker.yaml --tags startup

stop-docker:
	@ansible-playbook $(CURDIR)/PB-ManageDocker.yaml --tags stop

restart-docker:
	@ansible-playbook $(CURDIR)/PB-ManageDocker.yaml --tags restart

setup-etcd:
	@ansible-playbook $(CURDIR)/PB-ManageETCD.yaml --tags setup

startup-etcd:
	@ansible-playbook $(CURDIR)/PB-ManageETCD.yaml --tags startup

stop-etcd:
	@ansible-playbook $(CURDIR)/PB-ManageETCD.yaml --tags stop

restart-etcd:
	@ansible-playbook $(CURDIR)/PB-ManageETCD.yaml --tags restart

.PHONY: usage github \
	ping \
	setup-mysql startup-mysql stop-mysql restart-mysql \
	setup-redis startup-redis stop-redis restart-redis \
	setup-docker startup-docker stop-docker restart-docker \
	setup-etcd startup-etcd stop-etcd restart-etcd \
	setup-ssh \
	setup-ubuntu
