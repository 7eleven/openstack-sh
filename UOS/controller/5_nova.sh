keystone user-create --name=nova --pass=123456 --email=1367484717@qq.com
keystone user-role-add --user=nova --tenant=service --role=admin
keystone service-create --name=nova --type=compute --description="OpenStack Compute"
keystone endpoint-create --service-id=$(keystone service-list | awk '/ compute / {print $2}') --publicurl=http://192.168.100.11:8774/v2/%\(tenant_id\)s --internalurl=http://10.0.0.11:8774/v2/%\(tenant_id\)s --adminurl=http://10.0.0.11:8774/v2/%\(tenant_id\)s
rm /var/lib/nova/nova.sqlite
nova-manage db_sync
