cp /home/centos/roboshop-shell/mongo.repo /etc/yum.repos.d/mongo.repo
yum install mongodb-org -y
systemctl enable mongod
systemctl start mongod
sed 's/127.0.0.1/0.0.0.0/g' etc/mongod.conf
systemctl restart mongod