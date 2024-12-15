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
