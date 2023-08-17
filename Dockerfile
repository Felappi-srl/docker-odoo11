FROM odoo:11.0

USER root
RUN rm -f /etc/apt/sources.list && touch /etc/apt/sources.list
RUN rm -f /etc/apt/sources.list.d/*
RUN echo "deb http://archive.debian.org/debian/ stretch main contrib non-free" > /etc/apt/sources.list
RUN echo "deb http://archive.debian.org/debian/ stretch-proposed-updates main contrib non-free" > /etc/apt/sources.list
RUN echo "deb http://archive.debian.org/debian-security stretch/updates main contrib non-free" > /etc/apt/sources.list
RUN apt-get update
USER odoo
