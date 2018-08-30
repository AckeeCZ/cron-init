FROM ubuntu:16.04

# entrypoint
COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install -y curl && apt-get install -y anacron rsyslog && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/entrypoint.sh"]

CMD cron && rsyslogd && tail -f /var/log/syslog
