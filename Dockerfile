FROM quay.octanner.io/base/oct-tomcat

COPY . /app/

WORKDIR /app

RUN mvn deploy && \
    cp target/testTomcat-0.1.war $CATALINA_HOME/webapps/ 
   
WORKDIR /
