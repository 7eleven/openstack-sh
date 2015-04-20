source creds
echo "" > /var/log/keystone/keystone-all.log
echo "" > /var/log/keystone/keystone-manage.log
tail /var/log/keystone/*
keystone user-list
keystone role-list
keystone tenant-list