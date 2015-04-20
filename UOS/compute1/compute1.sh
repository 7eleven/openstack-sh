dpkg-statoverride --update --add root root 0644 /boot/vmlinuz-$(uname -r)
chemod +x /etc/kernel/postinst.d/statoverride
rm /var/lib/nova/nova.sqlite
service nova-compute restart
sysctl -p