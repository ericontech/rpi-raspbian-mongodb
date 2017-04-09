FROM resin/rpi-raspbian

RUN apt-get update && apt-get install -y \
      mongodb \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /data/db

VOLUME ["/data/db"]

ENTRYPOINT ["/usr/bin/mongod"]

EXPOSE 27017