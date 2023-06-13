FROM python:3-alpine

LABEL maintainer="yziyr"

RUN apk add tor; wget https://notabug.org/tamper000/ftrc/archive/master.tar.gz; tar x -f master.tar.gz; rm -rf *tar.gz; cd ftrc; pip install -r requirements.txt
COPY torrc /etc/tor/

EXPOSE 9050 9051

CMD python3 /ftrc/main.py -o /etc/tor/bridges.conf; tor --controlport 9051
