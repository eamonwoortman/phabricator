FROM hachque/systemd-none

EXPOSE 80 443 22 2
ADD nginx.conf server-http.conf server-https-letsencrypt.conf server-https-manual.conf fastcgi.conf 15-https 25-nginx 25-php-fpm 20-postfix 10-boot-conf 35-phd 40-aphlict 50-cronie 55-backup php-fpm.conf php.ini setup.sh sshd_config.phabricator 45-phabricator-ssh phabricator-ssh-hook.sh backup.sh bake /preflight/
RUN chmod +x /preflight/setup.sh && /preflight/setup.sh
CMD ["/init"]
