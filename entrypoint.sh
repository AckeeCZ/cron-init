#!/bin/bash
set -eo pipefail

echo ${CRON_SCHEDULE_1}

#for i in 1 2 3 4 5 6 7 8
#do
#  cronSchVar=CRON_SCHEDULE_$i
#  cronJobVar=CRON_JOB_$i
#  if [ -z "${!cronSchVar}" -o -z "${!cronJobVar}" ]; then
#    echo "Cron $i not specified, moving on."
#  else
#    # add a cron job
#    echo "${!cronSchVar} root ${cronJobVar}" >> /etc/crontab
#  fi
#done

crontab /etc/crontab

exec "$@"
