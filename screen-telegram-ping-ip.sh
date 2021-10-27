#!/bin/bash
cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1
screen -S telegram-ping-ip -p 0 -X quit
screen -S "telegram-ping-ip" -U -m -d bash telegram-ping-ip.sh
