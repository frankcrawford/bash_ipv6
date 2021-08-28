#! /bin/bash
#
# Testing and sample script for the ipv6_utils.sh functions
#

. ipv6_utils.sh

for ip in "$@"
do
	set $(ipv6_split_mask $ip)
	ip=$1
	sn=${2:-64}

	echo "IP: $ip"
	echo "Expanded: $(expand_ipv6 $ip)"
	echo "Recompressed: $(compress_ipv6 $(expand_ipv6 $ip))"

	echo -n 'Is IPv6? ' ; if $(is_ipv6 $ip); then echo 'Yes'; else echo 'No'; fi
	echo "Prefix/${sn}: $(ipv6_prefix $ip $sn)"
	echo "Prefix/56: $(ipv6_prefix $ip 56)"
	echo "Interface ID: $(ipv6_interface $ip)"
	echo "Subnet ID/${sn} (hex/dec): $(ipv6_subnetid $ip $sn)/$(ipv6_subnetid $ip $sn '%d')"
	echo "Subnet ID/56 (hex/dec): $(ipv6_subnetid $ip 56)/$(ipv6_subnetid $ip 56 '%d')"

	echo "Address type: $(ipv6_type $ip)"

	echo
done

exit 0
