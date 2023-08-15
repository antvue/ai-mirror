FROM antvue/nginx
LABEL maintainer="yehuping@sjtu.edu.cn"

ADD fs/ ./
#RUN mv /MGR_INDEX /usr/share/squid/errors/templates/MGR_INDEX
#RUN mv /MGR_INDEX /usr/share/squid-langpack/en/

VOLUME ["/var/nginx-cache"]


EXPOSE 3129/tcp
