# FROM minio/mc
FROM alpine:3
RUN wget -O /bin/mc https://dl.min.io/client/mc/release/linux-amd64/mc
RUN chmod +x /bin/mc
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
