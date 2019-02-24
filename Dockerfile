FROM fsword/eosio:v1.6

RUN apt-get update && apt-get install iputils-ping -y

ENV BASE_DIR /opt/eosio
ENV DATA_DIR $BASE_DIR/bin/data-dir
ENV ADDR_TO_IP true

RUN mkdir -p $DATA_DIR

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--data-dir", "/opt/eosio/bin/data-dir", "-e"]

