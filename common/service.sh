while true; do
  if pgrep com.termux.api > /dev/null; then
    # echo "com.termux.api is up"
  else
    # echo "com.termux.api is down"
    am start -p com.termux.api
  fi
  sleep 15
done