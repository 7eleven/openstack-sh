keystone user-create --name=neutron --pass=123456 --email=1367484717@qq.com
keystone user-role-add --user=neutron --tenant=service --role=admin
keystone service-create --name=neutron --type=network --description="OpenStack Networking"
keystone endpoint-create --service-id=$(keystone service-list | awk '/ network / {print $2}') --publicurl=http://192.168.100.11:9696 --internalurl=http://10.0.0.11:9696 --adminurl=http://10.0.0.11:9696
keystone tenant-list | awk '/ service / { print $2 }'
