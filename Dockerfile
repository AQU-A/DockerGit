ARG VERSION=18.04
FROM ubuntu:${VERSION}
USER root


RUN apt-get update && \
apt-get -y upgrade && \
apt-get install -y apache2  inetutils-ping

RUN echo 'Does Panda eat popcorn?' > index.html

RUN mkdir /mojvolumen
RUN echo 'Does Panda eat popcorn?' > /mojvolumen/index.html
VOLUME /mojvolumen

# COPY data/panda.conf /etc/apache2/sites-available/panda.conf

# ADD data/html.tar.gz /var/www/html/ - pokazaæ extract tara przy ADD, pokazaæ jak by to by³o na copy
# ADD github or any other file from url - pokazaæ zgrywanie z urla, pokazaæ, ¿e copy tego nie zrobi

EXPOSE 80

ENV HOME /root

WORKDIR /root

ENTRYPOINT ["ping"]

CMD ["google.com"]
