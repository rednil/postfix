#!/bin/bash

sed-build.sh
postfix.sh

ln -s /usr/local/sbin/run.sh /etc/my_init.d/10_run.sh

#postconf -e 'home_mailbox = Maildir/'
#postconf -e 'mailbox_command ='
#postconf -e 'smtpd_sasl_local_domain ='
#postconf -e 'smtpd_sasl_auth_enable = yes'
#postconf -e 'smtpd_sasl_security_options = noanonymous'
#postconf -e 'broken_sasl_auth_clients = yes'
#postconf -e 'smtpd_recipient_restrictions = permit_sasl_authenticated,permit_mynetworks,reject_unauth_destination'
#postconf -e 'inet_interfaces = all'




