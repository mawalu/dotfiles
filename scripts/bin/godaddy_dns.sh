#!/bin/bash
function address() {
  ifconfig $1 | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
}

file="~/.last_up"
last=$(cat ~/.last_ip)
ip=$(address enp0s31f6)

if [ -z "$VAR" ]; then
  ip=$(address wlp3s0)
fi

if [ "$last" == "$ip" ]; then
  echo "Same ip as before"
  exit 0
fi

echo "New ip is $ip"
echo $ip > ~/.last_ip

curl -s -X PUT \
  "https://api.godaddy.com/v1/domains/$DOMAIN/records/A/laptop.vom" \
  -H "authorization: sso-key $API_KEY:$API_SECRET" \
  -H "Content-Type: application/json" \
  -d "{
        \"data\": \"$ip\",
        \"name\": \"laptop.vom\",
        \"ttl\": 1800,
        \"type\": \"A\"
      }" > /dev/null

