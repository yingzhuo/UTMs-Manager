# mysql

## 如何初始化密码

```sql
-- 首次安装好后密码是空白字符串

-- 重置密码
ALTER USER IF EXISTS 'root'@'%' IDENTIFIED WITH caching_sha2_password BY 'root';

-- 允许root账户远程登录
UPDATE mysql.user SET host = '%' WHERE user = 'root';

-- 刷新权限
FLUSH PRIVILEGES;
```

## 如何开启主从复制

```sql
-------------------
-- MASTER
-------------------

-- 创建账户
CREATE USER 'slave'@'%' IDENTIFIED WITH mysql_native_password BY 'slave';
GRANT REPLICATION SLAVE ON *.* TO 'slave'@'%';
FLUSH PRIVILEGES;

-- 重置所有binlog
RESET master;

-- 查看Binlog偏移量
SHOW MASTER STATUS;
```

```sql
-------------------
-- SLAVE
-------------------

-- 指定要复制的主节点信息
CHANGE MASTER TO MASTER_HOST='192.168.31.165', MASTER_PORT=3306, MASTER_USER='slave', MASTER_PASSWORD='slave', MASTER_LOG_FILE='binlog.000001', MASTER_LOG_POS=157;

-- 开启复制模式
START SLAVE;

-- 检查状态
SHOW SLAVE STATUS;
```
