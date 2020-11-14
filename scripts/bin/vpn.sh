#!/bin/bash
NAMESPACE=mullvad
DEVICE=mullvad-wg

if [[ ! -f "/var/run/netns/$NAMESPACE" ]]; then
  ip netns add $NAMESPACE
  ip link add $DEVICE type wireguard
  ip link set $DEVICE netns $NAMESPACE
  ip -n $NAMESPACE addr add 10.99.65.248/32 dev $DEVICE
  ip -n $NAMESPACE addr add fc00:bbbb:bbbb:bb01::41f8/128 dev $DEVICE
  ip netns exec $NAMESPACE wg setconf $DEVICE /etc/wireguard/netns.conf
  ip -n $NAMESPACE link set dev $DEVICE mtu 1300
  ip -n $NAMESPACE link set $DEVICE up
  ip -n $NAMESPACE route add default dev $DEVICE
fi

ip netns exec $NAMESPACE sudo -u martin firefox -P vpn
