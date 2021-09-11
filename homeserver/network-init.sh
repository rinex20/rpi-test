#!/bin/sh

ip link set eth0_op promisc on
ip link add macvlan link eth0_op type macvlan  mode bridge

ip addr add 192.168.90.16/32 dev macvlan
ip link set macvlan up

ip route add 192.168.90.4/30 dev macvlan
