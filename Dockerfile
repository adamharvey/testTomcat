FROM quay.octanner.io/base/oct-tomcat

RUN ["apt-get","update"]
RUN ["apt-get", "install", "-y", "maven"]

COPY . /app/
WORKDIR /app

RUN mvn package && \
    cp target/testTomcat-0.1.war $CATALINA_HOME/webapps/ 

CMD ["/tomcat/bin/startup.sh"]
