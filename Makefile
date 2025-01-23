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

backup-mysql:
	@ansible-playbook $(CURDIR)/PB-DumpMySQL.yaml

setup-redis:
	@ansible-playbook $(CURDIR)/PB-ManageRedis.yaml --tags setup

startup-redis:
	@ansible-playbook $(CURDIR)/PB-ManageRedis.yaml --tags startup

stop-redis:
	@ansible-playbook $(CURDIR)/PB-ManageRedis.yaml --tags stop

restart-redis:
	@ansible-playbook $(CURDIR)/PB-ManageRedis.yaml --tags restart

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

setup-xxljob:
	@ansible-playbook $(CURDIR)/PB-ManageXxlJob.yaml --tags setup

stop-xxljob:
	@ansible-playbook $(CURDIR)/PB-ManageXxlJob.yaml --tags stop

startup-xxljob:
	@ansible-playbook $(CURDIR)/PB-ManageXxlJob.yaml --tags startup

restart-xxljob:
	@ansible-playbook $(CURDIR)/PB-ManageXxlJob.yaml --tags restart

setup-zookeeper:
	@ansible-playbook $(CURDIR)/PB-ManageZookeeper.yaml --tags setup

stop-zookeeper: stop-kafka
	@ansible-playbook $(CURDIR)/PB-ManageZookeeper.yaml --tags stop

startup-zookeeper:
	@ansible-playbook $(CURDIR)/PB-ManageZookeeper.yaml --tags startup

restart-zookeeper:
	@ansible-playbook $(CURDIR)/PB-ManageZookeeper.yaml --tags restart

setup-kafka:
	@ansible-playbook $(CURDIR)/PB-ManageKafka.yaml --tags setup

stop-kafka:
	@ansible-playbook $(CURDIR)/PB-ManageKafka.yaml --tags stop

startup-kafka: startup-zookeeper
	@ansible-playbook $(CURDIR)/PB-ManageKafka.yaml --tags startup

restart-kafka:
	@ansible-playbook $(CURDIR)/PB-ManageKafka.yaml --tags restart

setup-rocketmq:
	@ansible-playbook $(CURDIR)/PB-ManageRocketMQ.yaml --tags setup

startup-rocketmq:
	@ansible-playbook $(CURDIR)/PB-ManageRocketMQ.yaml --tags startup

stop-rocketmq:
	@ansible-playbook $(CURDIR)/PB-ManageRocketMQ.yaml --tags stop

restart-rocketmq:
	@ansible-playbook $(CURDIR)/PB-ManageRocketMQ.yaml --tags restart

setup-rocketmq-dashboard:
	@ansible-playbook $(CURDIR)/PB-ManageRocketMQDashboard.yaml --tags setup

startup-rocketmq-dashboard:
	@ansible-playbook $(CURDIR)/PB-ManageRocketMQDashboard.yaml --tags startup

stop-rocketmq-dashboard:
	@ansible-playbook $(CURDIR)/PB-ManageRocketMQDashboard.yaml --tags stop

restart-rocketmq-dashboard:
	@ansible-playbook $(CURDIR)/PB-ManageRocketMQDashboard.yaml --tags restart

setup-nacos:
	@ansible-playbook $(CURDIR)/PB-ManageNacos.yaml --tags setup

startup-nacos:
	@ansible-playbook $(CURDIR)/PB-ManageNacos.yaml --tags startup

stop-nacos:
	@ansible-playbook $(CURDIR)/PB-ManageNacos.yaml --tags stop

restart-nacos:
	@ansible-playbook $(CURDIR)/PB-ManageNacos.yaml --tags restart

setup-sentinel:
	@ansible-playbook $(CURDIR)/PB-ManageSentinel.yaml --tags setup

startup-sentinel:
	@ansible-playbook $(CURDIR)/PB-ManageSentinel.yaml --tags startup

stop-sentinel:
	@ansible-playbook $(CURDIR)/PB-ManageSentinel.yaml --tags stop

restart-sentinel:
	@ansible-playbook $(CURDIR)/PB-ManageSentinel.yaml --tags restart
