#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ab10e215-3609-48a9-8500-5a17c7ff66ee"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

