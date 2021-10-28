# Telegram Bot for Sending IP-address of a server if Dynamic IP has changed.
*Inspired by [indicozy/telegram-ping-ip](https://github.com/indicozy/telegram-ping-ip)*
## Getting started.
### Requirements:
* `curl` - Install with whatever package manager you use
* `screen` - *Optional* requirement to run script in background.


### Clone repo and Configure
```bash
git clone https://github.com/shihaamabr/telegram-ping-ip.git
cd telegram-ping-ip
chmod +x telegram-ping-ip.sh screen-telegram-ping-ip.sh
cp env.sample .env
```
- Edit the contents of .env to your config (`nano .env`)
## Running
### Execute the script - Forground
```bash
./telegram-ping-ip.sh - Background 
```
### Run the script in a screen 
```bash
./screen-telegram-ping-ip.sh
```
### Run at system boot up
* Add it to a crontab, Run: `crontab -e`
```
@reboot /bin/bash /path/to/telegram-ping-ip/screen-telegram-ping-ip.sh
```
## Future plans
* create a daemon, idk, it seems interesting


## Additional Information
**FYI IT pings to `whatismyip.shihaam.me` by default, this can be configured in .env to use `ifconfig.me` or whatever else server.**

## Bugs
- [You tell me :)](https://github.com/shihaamabr/telegram-ping-ip/issues/new)
