FROM vtigercrm/vtigercrm-8.3.0:latest

# Kopiere Entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Originalcode sichern
RUN cp -r /var/www/html /opt/vtiger_source

ENTRYPOINT ["/entrypoint.sh"]
