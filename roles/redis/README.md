# redis

## 如何初始化集群

```bash
redis-cli \
    --pass redis \
    --no-auth-warning \
    --cluster create \
        192.168.31.165:6379 192.168.31.165:6380 \
        192.168.31.166:6379 192.168.31.166:6380 \
        192.168.31.167:6379 192.168.31.167:6380 \
    --cluster-replicas 1
```
