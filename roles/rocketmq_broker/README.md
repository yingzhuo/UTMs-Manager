# RocketMQ (Broker)

## 如何开启Dashboard

```yaml
name: "RocketMQ 控制台"
services:
  rocketmq-dashboard:
    image: apacherocketmq/rocketmq-dashboard:latest
    restart: always
    environment:
      - JAVA_OPTS=-Drocketmq.namesrv.addr=192.168.31.165:9876;192.168.31.166:9876;192.168.31.167:9876
    ports:
      - 18833:8080
```
