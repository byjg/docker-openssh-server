FROM alpine:latest

RUN apk add --no-cache openssh bash
 
COPY run.sh /run.sh 

CMD [ "/run.sh" ]
