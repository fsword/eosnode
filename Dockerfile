FROM eosio/eos:v1.0.7

RUN apt-get update && apt-get install iputils-ping -y

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

ENV ADDR_TO_IP true
CMD ["--data-dir", "/opt/eosio/bin/data-dir", "--genesis-json", "/opt/eosio/bin/data-dir/genesis.json", "-e"]
