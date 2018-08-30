#!/bin/bash
set -eo pipefail

i=1

cronSchVar=CRON_SCHEDULE_1
cronJobVar=CRON_JOB_1

while [ ! -z "${!cronSchVar}" ]
do
  echo "${!cronSchVar} root ${!cronJobVar}" >> /etc/crontab

  i=$[$i+1]
  cronSchVar=CRON_SCHEDULE_$i
  cronJobVar=CRON_JOB_$i
done

#crontab /etc/crontab

exec "$@"
