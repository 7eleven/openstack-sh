keystone user-create --name=glance --pass=123456 --email=1367484717@qq.com
keystone user-role-add --user=glance --tenant=service --role=admin
keystone service-create --name=glance --type=image --description="OpenStack Image Service"
keystone endpoint-create --service-id=$(keystone service-list | awk '/ image / {print $2}') --publicurl=http://192.168.100.11:9292 --internalurl=http://10.0.0.11:9292 --adminurl=http://10.0.0.11:9292
service glance-api restart
service glance-registry restart
glance-manage db_sync
glance image-create --name="cirros-0.3.2-x86_64" --is-public=true --container-format=bare --disk-format=qcow2 --location=http://cdn.download.cirros-cloud.net/0.3.2/cirros-0.3.2-x86_64-disk.img
