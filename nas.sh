#/bin/bash

# Variables ----------------
NAS_IP="10.0.0.20"
NAS_PATH="nas"
MOUNT_PATH="/mnt"
# --------------------------

# Check if the nas is available on the network
function nas_available {
  ping -W 1 -c 1 "$NAS_IP" >/dev/null ; echo $?
}

# Mount the nas
function mount_nas {
  mount "$NAS_IP":"$NAS_PATH" "$MOUNT_PATH"
}

# Main function
function main {
  if [ $(nas_available) == "0" ]
  then
    mount_nas
  else
    return 1
  fi
}

main
