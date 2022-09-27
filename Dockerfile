# Create database to zabbix control with MySQL 5.7
#

FROM "centos:8"

LABEL maintainer="Michel Peterson \
      <michel.peterson@l1nuxc0d3.com>"

ADD ./sourceconf/ /
ADD ./sourceconf/openssl.cnf /etc/pki/tls/openssl.cnf

#
# Set timezone
# 

RUN dnf -y makecache && \
    dnf -y install epel-release && \
    dnf -y install ansible vim glibc-langpack-pt glibc-langpack-br  && \
    echo "LANG=pt_BR.UTF-8" > /etc/locale.conf

WORKDIR /ansible
