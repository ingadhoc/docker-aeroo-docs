FROM ubuntu:14.04
MAINTAINER Damian Soriano <ds@ingadhoc.com>

ENV REFRESHED_AT 2014-09-17

RUN apt-get update
RUN apt-get install -y --force-yes --no-install-recommends libreoffice-core libreoffice-l10n-es python3-uno git python3-pip default-jre

RUN git clone https://github.com/aeroo/aeroo_docs.git /opt/aeroo_docs

RUN pip3 install jsonrpc2 daemonize

#CMD ["sudo", "/usr/bin/soffice", "--nologo", "--nofirststartwizard", "--norestore", "--invisible", "--headless", "--accept='socket,host=localhost,port=8100,tcpNoDelay=1;urp;'"]

CMD ["/opt/aeroo_docs/aeroo-docs", "start"]
