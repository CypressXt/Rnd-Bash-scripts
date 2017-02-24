# Rnd-Bash-scripts
Random bash scripts

## Nas.sh
Auto-mount a nas on boot
### Install
Save the script somewhere on your drive.
Set te file executable:
```
chmod +x nas.sh
```

In /etc/crontab
```
@reboot         root            /path/to/nas.sh
```
