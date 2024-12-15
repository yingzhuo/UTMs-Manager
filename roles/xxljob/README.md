# xxl-job

## 依赖的MySQL如何管理

```sql
-- 不使用root账户
DROP USER IF EXISTS 'xxl-job'@'%';
CREATE USER 'xxl-job'@'%' IDENTIFIED BY 'xxl-job';
GRANT ALL PRIVILEGES ON `xxl_job`.* TO 'xxl-job'@'%';
```

## 初始用户名和密码是什么

* 用户名: admin
* 密码: 123456
