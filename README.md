# bash_ipv6

Calculate IPv6 address segments entirely in bash

Based loosely on wg-ip (https://github.com/chmduquesne/wg-ip)
IPv6 definitions from https://en.wikipedia.org/wiki/IPv6_address

Frank Crawford - <frank@crawford.emu.id.au> - 31-Jul-2021

Functions:

expand_ipv6 $ip
- expand out IPv6 ($ip) address with all digits

compress_ipv6 $ip
- returns compressed IPv6 address ($ip) under the form recommended by RFC5952

ipv6_prefix $ip $subnet
- extract the IPv6 routing prefix from $ip with subnet length $subnet

ipv6_subnetid $ip $subnet $fmt
- extract the local subnet ID from unicast address ($ip) with optional $fmt

ipv6_interface $ip
- IPv6 host or interface part of address ($ip)

ipv6_split_mask $ip/$mask
- returns 2 values $ip and $mask

is_ipv6 $ip
- tests if address ($ip) is a valid IPv6 in either the expanded form
or the compressed one

ipv6_type $ip
- return IPv6 address ($ip) category
