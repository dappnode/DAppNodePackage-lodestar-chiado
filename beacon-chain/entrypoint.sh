#!/bin/sh

exec node /usr/app/node_modules/.bin/lodestar \
    beacon \
    --preset=gnosis \
    --network=chiado \
    --genesisStateFile=/usr/genesis.ssz \
    --jwt-secret=/jwtsecret \
    --execution.urls $HTTP_ENGINE \
    --eth1.providerUrls $HTTP_PROVIDER \
    --dataDir /var/lib/data \
    --rest \
    --rest.address 0.0.0.0 \
    --rest.port 4000 \
    --port $P2P_PORT \
    --logFile /var/lib/data/beacon.log \
    --logFileLevel debug \
    --logFileDailyRotate 5 \
    --bootnodes=enr:-LK4QN4NEavjPt7sJOfdcPKNucewHHxbtzdz5JCf_IRdsd58aIuix-9uIwSCc1TCfdi-j5HPunTxZ-TL10P4leQmGEEGh2F0dG5ldHOIAAAAAAAAAACEZXRoMpBI6hZ8AQAAb1oAAAAAAAAAgmlkgnY0gmlwhIuQGnOJc2VjcDI1NmsxoQJ7PqgatnROjTufoEKhwgeKxUJyLOacw0odaF1KS7F-7oN0Y3CCIyiDdWRwgiMo \
    $EXTRA_OPTS



