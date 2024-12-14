usage:
	@echo "=============================================================="
	@echo "usage (default)  => 显示本菜单"
	@echo "github           => 提交本项目"
	@echo ""
	@echo "ping             => ping"
	@echo "setup-mysql      => 配置MySQL服务"
	@echo "setup-redis      => 配置Reids服务"
	@echo "setup-ssh        => 配置SSH服务"
	@echo "setup-ubuntu     => 配置Ubuntu系统"
	@echo "=============================================================="

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
	@ansible-playbook $(CURDIR)/02-SetupRedis.yaml

setup-ssh:
	@ansible-playbook $(CURDIR)/98-SetupSSH.yaml

setup-ubuntu:
	@ansible-playbook $(CURDIR)/99-SetupUbuntu.yaml

.PHONY: usage github \
	ping \
	setup-mysql \
	setup-redis \
	setup-ssh \
	setup-ubuntu
