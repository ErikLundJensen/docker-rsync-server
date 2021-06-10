FROM alpine

RUN apk add --no-cache rsync bash tzdata

RUN mkdir -p /docker-entrypoint.d

# RUN rsync in no daemon and expose errors to stdout
CMD [ "/usr/bin/rsync", "--no-detach", "--daemon", "--log-file=/dev/stdout" ]
