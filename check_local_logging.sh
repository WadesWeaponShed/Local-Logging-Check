file=$FWDIR/log/fw.log
minimumsize=10000
actualsize=$(du -k "$file" | cut -f 1)
if [ $actualsize -ge $minimumsize ]; then
    echo "$HOSTNAME is logging locally" | $FWDIR/bin/sendmail -s 'A FW is logging Locally' -t MAIL_SERVER_IP -f SENDER@DOMAIN RECEPIANT@DOMAIN
else
    echo Not Logging Locally
fi
