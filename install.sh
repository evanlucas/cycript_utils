#!/bin/sh

echo "downloading cycript utils..."
mkdir -p /usr/lib/cycript0.9/com/evanlucas
curl -sk https://raw.github.com/evanlucas/cycript_utils/master/utils.cy > /usr/lib/cycript0.9/com/evanlucas/utils.cy
ret=$?
if [[ "$ret" == "0" ]]; then
  echo "success..."
else
  echo "failed..."
  echo "please open an issue at"
  echo "  https://github.com/evanlucas/cycript_utils"
fi
exit $ret
