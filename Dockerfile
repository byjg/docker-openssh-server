FROM alpine:3.9

RUN apk add --no-cache openssh bash
 
COPY assets/run.sh /run.sh
COPY assets/sshd_config /etc/ssh/sshd_config
COPY assets/motd /etc/motd

CMD [ "/run.sh" ]

RUN addgroup -g 1000 user \
 && adduser -D -u 1000 -G user user \
 && passwd -u user
WORKDIR /home/user
