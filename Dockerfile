FROM dockerfile/java
MAINTAINER mkroli
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

RUN wget http://apache.openmirror.de/karaf/4.0.0.M1/apache-karaf-4.0.0.M1.tar.gz; \
    mkdir /opt/karaf; \
    tar --strip-components=1 -C /opt/karaf -xzf apache-karaf-4.0.0.M1.tar.gz; \
    rm -f apache-karaf-4.0.0.M1.tar.gz; \
    mkdir /deploy; \
    sed -i 's/^\(felix\.fileinstall\.dir\s*=\s*\).*$/\1\/deploy/' /opt/karaf/etc/org.apache.felix.fileinstall-deploy.cfg

VOLUME ["/deploy"]
EXPOSE 1099 8101 44444
ENTRYPOINT ["/opt/karaf/bin/karaf"]
