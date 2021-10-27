#!/bin/bash
source .env 2> /dev/null #Import Credentials

#Check for missing configration
if [ ! -f .env ] || [ "$TG_BOT_TOKEN" = "" ] || [ "$TG_CHATID" = "" ]
then
	echo Not Configured! Please 'cp env.sample .env' edit .env and run this script again.
fi

FethchIP(){
    NEW_IP=$(curl -s $WHATISMYIP)
}
SendToTelegram(){
    curl -s $TG_BOTAPI$TG_BOT_TOKEN/sendMessage?chat_id=$TG_CHATID'&'text=IP%20is%20$NEW_IP > /dev/null
}
while true; do
    FethchIP
    if [ "$NEW_IP" != "$OLD_IP" ]
    then
        SendToTelegram
        OLD_IP=$NEW_IP
        :
    fi
    sleep $DELAY
done
