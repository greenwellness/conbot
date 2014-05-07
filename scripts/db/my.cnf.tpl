# If your Unix machine itself is not secured, you should assign passwords to the MySQL root accounts in the grant tables. Otherwise, any user with a login account on that machine can run the mysql client with a --user=root option and perform any operation. (It is a good idea to assign passwords to MySQL accounts in any case, but especially so when other login accounts exist on the server host.) See Section 2.9.2, "Securing the Initial MySQL Accounts":http://dev.mysql.com/doc/refman/5.6/en/default-privileges.html 

[client]
user=root
password=

[mysqld]
host=127.0.0.1
user=root
port=3306
password=

[mysqldump]
user=root
password=
