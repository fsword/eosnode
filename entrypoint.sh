#!/bin/sh

DATA_DIR=/opt/eosio/bin/data-dir
TEMPLATE_PATH=$DATA_DIR/config.ini.template
CONFIG_INI_PATH=$DATA_DIR/config.ini

if [ -f $CONFIG_INI_PATH ]
then
  echo "file exist: $CONFIG_INI_PATH"
elif [ "$ADDR_TO_IP" != "" ]
then
  echo "create $CONFIG_INI_PATH"
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

if [ -d $DATA_DIR/blocks ]
then
  exec /opt/eosio/bin/nodeosd.sh "$@"
else
  exec /opt/eosio/bin/nodeosd.sh --genesis-json $DATA_DIR/genesis.json "$@"
fi

