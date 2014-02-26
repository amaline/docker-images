FROM jdk7-oracle:gold

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN apt-get -y install tomcat7 && rm -rf /var/lib/tomcat7/webapps/ROOT

EXPOSE 8080
ONBUILD ADD tomcat7.default /etc/default/tomcat7
ADD tomcat.sv.conf /etc/supervisor/conf.d/
RUN chown -R tomcat7:tomcat7 /usr/share/tomcat7
ONBUILD ADD ssl/keystore.jks /etc/tomcat7/keystore.jks
ONBUILD ADD ssl/server.xml /etc/tomcat7/server.xml
