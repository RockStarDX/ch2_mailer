FROM alpine:latest

WORKDIR /mailer

COPY . ./

RUN adduser -DHs /bin/sh example

RUN chown example mailer.sh

RUN chmod a+x mailer.sh

USER example

CMD ["mailer.sh"]

EXPOSE 33333