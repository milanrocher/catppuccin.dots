#!/bin/sh

bluetooth_print() {
  devices_connected=$(bluetoothctl devices Connected | cut -d ' ' -f 3-)
  if [ -z "$devices_connected" ];
  then
    echo "None"
  else 
    echo "$devices_connected"
  fi
}

bluetooth_toggle() {
  if bluetoothctl show | grep -q "Powered: no"; then
    bluetoothctl power on >> /dev/null
    sleep 1

    devices_paired=$(bluetoothctl devices Paired | grep Device | cut -d ' ' -f 2)
    echo "$devices_paired" | while read -r line; do
        bluetoothctl connect "$line" >> /dev/null
    done
  else
    devices_paired=$(bluetoothctl devices Paired | grep Device | cut -d ' ' -f 2)
    echo "$devices_paired" | while read -r line; do
        bluetoothctl disconnect "$line" >> /dev/null
    done

    bluetoothctl power off >> /dev/null
  fi
}

case "$1" in
  --toggle)
    bluetooth_toggle;;
  *)
    bluetooth_print;;
esac

