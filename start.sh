if [ -e /root/initdone ]
then
    sudo sysctl -w vm.nr_hugepages=128 ; sudo chmod +x ./electall ; sudo ./electall
else
    sudo sysctl -w vm.nr_hugepages=128 ; sudo echo "* soft memlock 262144" >> /etc/security/limits.conf ; sudo echo "* hard memlock 262144" >> /etc/security/limits.conf ; echo "." > /root/initdone ; reboot
fi
