FROM frappe/erpnext:v15.55.2

USER root
RUN apt-get update && apt-get install -y git

USER frappe
WORKDIR /home/frappe/frappe-bench

# Install Helpdesk app
RUN bench get-app helpdesk https://github.com/frappe/helpdesk
