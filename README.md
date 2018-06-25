This is a simple script that can check if fw.log is growing in $FWDIR/log and send an email alert.

You will need to configure the mail portion of the script to reflect a relay server and you can modify the current size in KB. It will trigger if fw.log is over 10MB.

## How to Use ##
 - move check_local_logging.sh to gateway
 - chmod 755 check_local_logging.sh
 - vi file and modify mail server info
 - setup cronjob to execute on the interval you want to check

 The script uses the $HOSTNAME variable in the body of the email to pull the FW name.

 
