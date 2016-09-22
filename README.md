# Container for cron jobs

This image provides a cron daemon that runs cron jobs passed as enviroment variables.

Cron jobs is specified as enviroments in folowing pattern:
 - `CRON_SCHEDULE_N` cron schedule string, example: '0 2 * * *'
 - `CRON_JOB_N` command to be executed

where N is ascending number from 1 to number of cron jobs

