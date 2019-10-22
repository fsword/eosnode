FROM ubuntu:18.04

RUN apt-get update && apt-get install iputils-ping wget -y


RUN wget https://github.com/EOSIO/eos/releases/download/v2.0.0-rc1/eosio_2.0.0-rc1-ubuntu-18.04_amd64.deb \
    && apt install ./eosio_*.deb -y

ENV BASE_DIR /opt/eosio
ENV DATA_DIR $BASE_DIR/data-dir
ENV CONFIG_DIR $BASE_DIR/config

ENV ADDR_TO_IP true

RUN mkdir -p $DATA_DIR $CONFIG_DIR

COPY sys_contracts /contracts
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--contracts-console", "-e"]

