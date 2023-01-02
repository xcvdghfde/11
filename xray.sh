#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e2b3075c-135d-4137-bbab-3a6630842b42 "
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

