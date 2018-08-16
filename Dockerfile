FROM eosio/eos:v1.2.1

RUN apt-get update && apt-get install iputils-ping -y

COPY entrypoint.sh /
ENV ADDR_TO_IP true

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--data-dir", "/opt/eosio/bin/data-dir", "-e"]

