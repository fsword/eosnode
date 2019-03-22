FROM ubuntu:18.10

RUN apt-get update && apt-get install iputils-ping wget -y


RUN wget https://github.com/EOSIO/eos/releases/download/v1.7.0/eosio_1.7.0-1-ubuntu-18.04_amd64.deb \
    && apt install ./eosio_1.7.0-1-ubuntu-18.04_amd64.deb -y

ENV BASE_DIR /opt/eosio
ENV DATA_DIR $BASE_DIR/data-dir
ENV CONFIG_DIR $BASE_DIR/config

ENV ADDR_TO_IP true

RUN mkdir -p $DATA_DIR $CONFIG_DIR

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--contracts-console", "-e"]

