# Backup container for mongo instances

This image provides a cron daemon that runs daily backups from mongo (clustered or single instance) to Amazon S3.

Following ENV variables must be specified:
 - `CRON_SCHEDULE` cron schedule string, default '0 2 * * *'

