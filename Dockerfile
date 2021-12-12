FROM mariadb:10.6.4

MAINTAINER Tomas Kulhanek <jsem@tomaskulhanek.cz>

ENV TZ=Europe/Prague

COPY init.sql /docker-entrypoint-initdb.d/init.sql
COPY default.cnf /etc/mysql/mariadb.conf.d/99-default.cnf

EXPOSE 3306
CMD ["mysqld"]
