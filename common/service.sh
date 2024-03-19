# set +x
SLEEP_TIME=15

while true; do
  if pgrep com.termux.api 2>&1 > /dev/null; then
    # echo "com.termux.api is up"
    sleep $SLEEP_TIME
  else
    # echo "com.termux.api is down"
    am start -p com.termux.api > /dev/null
    sleep $SLEEP_TIME
  fi
done