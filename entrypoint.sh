#!/bin/sh

BASE_DIR=/opt/eosio
DATA_DIR=$BASE_DIR/bin/data-dir

TEMPLATE_PATH=$BASE_DIR/config.ini.template
CONFIG_INI_PATH=$DATA_DIR/config.ini

# 调整config.ini文件，将容器的的hostname换为ip，否则nodeos不能正确建立网络连接
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

# 根据 blocks 文件夹是否存在判断容器是否首次运行
# 仅在初次运行 EOS 节点时需要指定 genesis 文件
if [ -d $DATA_DIR/blocks ]
then
  exec /opt/eosio/bin/nodeosd.sh "$@"
else
  exec /opt/eosio/bin/nodeosd.sh --genesis-json $BASE_DIR/genesis.json "$@"
fi

