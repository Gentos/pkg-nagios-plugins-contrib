#!/bin/sh

# Our one non-success exit code.
EXIT_BAD_ARGS=1

if [ $# -lt 1 ]; then
    echo "Usage: $0 <ip address>"
    echo ''
    echo '  <ip address> the IP to check against a bunch of blacklists.'
    echo ''
    exit $EXIT_BAD_ARGS
else
    IP_ADDR="${1}"
fi



perl ./check_rbl -H $IP_ADDR \
    -t 60 \
    -c 1 \
    -w 1 \
    -v \
    -s cbl.anti-spam.org.cn -s cblplus.anti-spam.org.cn -s cblless.anti-spam.org.cn -s cdl.anti-spam.org.cn -s cbl.abuseat.org -s bl.deadbeef.com -s t1.dnsbl.net.au -s spamtrap.drbl.drand.net -s spamsources.fabel.dk -s 0spam.fusionzero.com -s mail-abuse.blacklist.jippg.org -s korea.services.net -s spamguard.leadmon.net -s ix.dnsbl.manitu.net -s relays.nether.net -s no-more-funn.moensted.dk -s psbl.surriel.com -s dyna.spamrats.com -s noptr.spamrats.com -s spam.spamrats.com -s dnsbl.sorbs.net -s dul.dnsbl.sorbs.net -s old.spam.dnsbl.sorbs.net -s problems.dnsbl.sorbs.net -s safe.dnsbl.sorbs.net -s spam.dnsbl.sorbs.net -s bl.spamcop.net -s pbl.spamhaus.org -s sbl.spamhaus.org -s xbl.spamhaus.org -s ubl.unsubscore.com -s dnsbl-1.uceprotect.net -s dnsbl-2.uceprotect.net -s dnsbl-3.uceprotect.net -s db.wpbl.info
