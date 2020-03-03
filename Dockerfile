FROM dockerbase/tomcat8

RUN    sed -i 's/8080/8090/' /usr/local/tomcat/conf/server.xml
RUN    ln -s /usr/local/tomcat /tomcat && \
       ln -s /usr/local/tomcat/bin /tom

VOLUME ["/usr/local/tomcat/webapps"]

EXPOSE 8090

CMD    ["bash"]
