FROM debian

# entrypoint
COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install -y cron && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/entrypoint.sh"]

CMD ["cron","-f"]
