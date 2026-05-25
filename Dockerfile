FROM frappe/frappe:version-15

USER frappe

RUN bench get-app --branch version-15 https://github.com/frappe/erpnext && \
    bench get-app --branch version-15 https://github.com/frappe/hrms

RUN cd /home/frappe/frappe-bench && \
    bench build --app frappe && \
    bench build --app erpnext && \
    bench build --app hrms
