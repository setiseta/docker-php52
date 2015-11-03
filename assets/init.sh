#!/bin/bash

if [ ! -f /firstrundone ]; then
	if [ "$RELAY_HOST" != "" ]; then
		echo "relayhost = $RELAY_HOST" >> /etc/postfix/main.cf
	fi
	if [ "$MASQ_DOMAINS" != "" ]; then
		echo "masquerade_domains = $MASQ_DOMAINS" >> /etc/postfix/main.cf
	fi
	echo "done" >> /firstrun
fi
service postfix start
apachectl -D FOREGROUND
