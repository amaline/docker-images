FROM tomcat7-ssl:gold
ADD openam.war /var/lib/tomcat7/webapps/

EXPOSE 8080
EXPOSE 8443
# also expose debugging port
#EXPOSE 8000

CMD supervisord -c /etc/supervisor.conf
