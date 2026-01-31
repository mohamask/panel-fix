FROM ghcr.io/pterodactyl/panel:latest

USER root

# 1. تثبيت أداة mysql
RUN apk update && apk add --no-cache mysql-client mariadb-connector-c

# 2. حل مشكلة الـ SSL (السماح بالشهادات الموقعة ذاتياً)
RUN echo "[client]" >> /etc/my.cnf && \
    echo "ssl-verify-server-cert = 0" >> /etc/my.cnf

# 3. ملاحظة مهمة: لا تقم بتغيير المستخدم هنا. 
# النظام يحتاج للعمل كـ root في البداية لضبط الصلاحيات تلقائياً.
