FROM ubuntu:14.04

ENV REFRESHED_AT 2015-05-02

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y git python3-uno python3-pip xvfb

# Limpieza
RUN apt-get clean

RUN pip3 install jsonrpc2
RUN pip3 install daemonize

RUN git clone https://github.com/aeroo/aeroo_docs.git /opt/aeroo_docs

EXPOSE 8989

CMD python3 /opt/aeroo_docs/aeroo-docs start -w adhoc-aeroo-docs-libreoffice -s 8100 -n -p 8989 -i 0.0.0.0
