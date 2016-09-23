# ARMMysqlCDemo

ARMMysqlCDemo -- ARM Mysql C Demo

采用了Buildroot创建的文件系统，现在要使用C连接ARM上的Mysql数据库，并对数据库进行操作，这仅仅是一个极其Demo。

## 操作步骤

* 配置Makefile：

```
    buildrootHome=/home/zengjf/rootfsArmLinux/buildroot-2016.08/
    gccPath=output/host/usr/bin/arm-none-linux-gnueabi-gcc
    includePath=output/build/mysql-5.1.73/include/
    libPath=output/target/usr/lib/
```

* make 
* 拷贝输出文件mysqlDemo到ARM主板上
* 在ARM主板上运行

## 查看运行结果

```
    # mysql -u root -p
    Enter password: 
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 3
    Server version: 5.1.73-log Source distribution

    Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql> show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | mysql              |
    | test               |
    | zengjfdb           |
    +--------------------+
    4 rows in set (0.01 sec)

    mysql> quit
    Bye
```
