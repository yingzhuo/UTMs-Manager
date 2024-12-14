# UTMs - Manager

因开发与学习之需要，使用[UTM](https://getutm.app)搭建自己的Linux集群，并使用[Red Hat - Ansible](https://www.ansible.com/)管理。

## 如何使用

```
===========================================================
杂项:
    make ping             => ping

Docker:
    make startup-docker   => 启动Dockker服务
    make stop-docker      => 关闭Docker服务
    make setup-docker     => 配置Docker服务
    make restart-docker   => 重启Docker服务

MySQL:
    make startup-mysql    => 开启MySQL服务
    make stop-mysql       => 关闭MySQL服务
    make setup-mysql      => 配置MySQL服务
    make restart-mysql    => 重启MySQL服务

Redis:
    make startup-redis    => 开启Redis服务
    make stop-redis       => 关闭Redis服务
    make setup-redis      => 配置Reids服务
    make restart-redis    => 重启Redis服务

ETCD:
    make startup-etcd     => 开启ETCD服务
    make stop-etcd        => 关闭ETCD服务
    make setup-etcd       => 配置ETCD服务
    make restart-etcd     => 重启ETCD服务

OS:
    make setup-ssh        => 配置SSH服务
    make setup-ubuntu     => 配置Ubuntu系统
===========================================================
```

## 操作系统

* Linux: ubuntu-24.04.1-live-server-arm64

## 组件说明

#### Redis

![Redis](./images/Redis.png)

## 许可证

* [Apache-2.0](./LICENSE.txt)
