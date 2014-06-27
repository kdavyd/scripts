#!/usr/bin/bash
# Author: Kirill.Davydychev@Nexenta.com
# Workaround for issue NEX-2074
# Replace /usr/sbin/cfgadm with this script; move original cfgadm to cfgadm.orig

if [ "$1" == "-c" ]
then
	if [ "$2" == "unconfigure" ]
	then 
		c_type="`cfgadm.orig $3 | tr -s " " | tail -1 | cut -d " " -f 2`"
		if [ "$c_type" == "fc-fabric" ]
		then 
			date >> /var/log/cfgadm_hack.log
			echo "Would've unconfigured $c_type device $3" >> /var/log/cfgadm_hack.log
		else 
			if [ "$c_type" == "fc-public" ]
			then 
				date >> /var/log/cfgadm_hack.log
				echo "Would've unconfigured $c_type device $3" >> /var/log/cfgadm_hack.log
			else
				if [ "$c_type" == "raid/hp" ]
				then
					date >> /var/log/cfgadm_hack.log
					echo "Would've unconfigured $c_type device $3" >> /var/log/cfgadm_hack.log
				else
					cfgadm.orig $1 $2 $3 $4
				fi
			fi
		fi
	else 
		cfgadm.orig $1 $2 $3 $4
	fi
else
	cfgadm.orig $1 $2 $3 $4
fi
