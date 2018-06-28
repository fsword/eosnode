#!/bin/sh

if [ "$ADDR_TO_IP" != "" ]
then

  TEMPLATE_PATH=/opt/eosio/bin/data-dir/config.ini.template
  CONFIG_INI_PATH=/opt/eosio/bin/data-dir/config.ini

  echo "use CONFIG_INI_PATH: $CONFIG_INI_PATH"

  cat $TEMPLATE_PATH | grep -v "p2p-peer-address" > $CONFIG_INI_PATH

  for host in `grep "p2p-peer-address" $TEMPLATE_PATH | grep -v "#" | awk -F= '{print $2}'`
  do
    addr=`echo $host | awk -F: '{print $1}'`
    port=`echo $host | awk -F: '{print $2}'`

    ip=`ping -c 1 $addr | grep PING | awk '{print $3}' | sed  -e "s/[():]//g"`
    echo "set peer node: $ip:$port"
    echo "p2p-peer-address = $ip:$port" >> $CONFIG_INI_PATH
  done

fi

exec /opt/eosio/bin/nodeosd.sh "$@"
