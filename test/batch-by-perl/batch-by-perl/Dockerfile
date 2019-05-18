#FROM ubuntu:18.04
FROM perl:latest

MAINTAINER mass10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update & apt-get upgrade

RUN cpanm YAML

COPY app /app

CMD /app/main.pl
