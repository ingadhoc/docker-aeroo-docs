FROM ubuntu:14.04

ENV REFRESHED_AT 2015-05-02

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y git libreoffice-writer libreoffice-calc xvfb openjdk-7-jre

# Accept EULA for MS fonts
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections # Accept EULA for MS fonts

# agregamos fuentes solicitadas por ivan
RUN apt-get install -y msttcorefonts curl fonts-cantarell ttf-mscorefonts-installer
RUN curl -s https://raw.githubusercontent.com/hotice/webupd8/master/install-google-fonts | bash

COPY ./resources/segoeui/ /usr/share/fonts/truetype/segoeui/

# Limpieza
RUN apt-get clean

EXPOSE 8100

CMD /usr/bin/soffice --norestore --nologo --norestore --nofirststartwizard --accept="socket,host=0,port=8100;urp;"
