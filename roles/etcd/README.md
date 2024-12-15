# ETCD

## 初始化root账号及密码

```bash
# 创建root账户和配置密码
etcdctl --endpoints=192.168.31.165:2379,192.168.31.166:2379,192.168.31.167:2379 user add root

# 开启验证功能
etcdctl --endpoints=192.168.31.165:2379,192.168.31.166:2379,192.168.31.167:2379 auth enable
```
