FROM frappe/erpnext:version-15

USER frappe

RUN bench get-app --branch version-15 https://github.com/frappe/hrms

RUN cd /home/frappe/frappe-bench && \
    bench build --app hrms
