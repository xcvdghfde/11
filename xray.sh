#!/bin/sh
if [ ! -f UUID ]; then
  UUID="788b0597-ebeb-49f8-9c04-2d8629b754f8 "
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

