FROM odoo:11.0

USER root
RUN python -m pip install xlsxwrite

USER odoo
