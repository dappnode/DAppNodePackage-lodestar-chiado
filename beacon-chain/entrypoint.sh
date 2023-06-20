#!/bin/sh

exec node /usr/app/node_modules/.bin/lodestar \
    beacon \
    --preset=gnosis \
    --network=chiado \
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
    $EXTRA_OPTS



