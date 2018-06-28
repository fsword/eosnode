FROM eosio/eos:v1.0.7

RUN apt-get update && apt-get install iputils-ping -y

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--data-dir", "/opt/eosio/bin/data-dir", "-e"]
