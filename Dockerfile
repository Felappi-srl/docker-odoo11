FROM odoo:11.0

USER root
RUN python -m pip install xlsxwrite
RUN \
  apt-get update && \
  apt-get install git -y && \
  ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts
RUN git clone https://github.com/OCA/queue.git /mnt/extra-addons
USER odoo
