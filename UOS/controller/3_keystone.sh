rm /var/lib/keystone/keystone.db
service keystone restart
keystone-manage db_sync
keystone user-create --name=admin --pass=123456 --email=1367484717@qq.com
keystone role-create --name=admin
keystone tenant-create --name=admin --description="Admin Tenant"
keystone user-role-add --user=admin --tenant=admin --role=admin
keystone user-role-add --user=admin --tenant=admin --role=_member_
keystone user-create --name=demo --pass=123456 --email=1367484717@qq.com
keystone tenant-create --name=demo --description="Demo Tenant"
keystone user-role-add --user=demo --tenant=demo --role=_member_
keystone tenant-create --name=service --description="Service Tenant"
keystone service-create --name=keystone --type=identity --description="OpenStack Identity"
keystone endpoint-create --service-id=$(keystone service-list | awk '/ identity / {print $2}') --publicurl=http://192.168.100.11:5000/v2.0 --internalurl=http://10.0.0.11:5000/v2.0 --adminurl=http://10.0.0.11:35357/v2.0
