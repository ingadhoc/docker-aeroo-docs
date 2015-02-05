FROM ubuntu:14.04
MAINTAINER Damian Soriano <ds@ingadhoc.com>

RUN apt-get update && \
    apt-get install -y --force-yes --no-install-recommends libreoffice-core libreoffice-l10n-es python3-uno git python3-pip default-jre supervisor

RUN mkdir -p /var/log/supervisor

RUN git clone https://github.com/aeroo/aeroo_docs.git /opt/aeroo_docs

RUN pip3 install jsonrpc2 daemonize

COPY supervisor.conf /etc/supervisor/conf.d/supervisor.conf

EXPOSE 8989

CMD ["/usr/bin/supervisord"]
