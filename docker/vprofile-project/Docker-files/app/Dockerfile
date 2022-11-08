FROM tomcat:8-jre11

LABEL "PROJECT"="VProfile"
LABEL "AUTHOR"="matheus-dr"

WORKDIR /usr/local/tomcat
VOLUME /usr/local/tomcat/webapps

RUN rm -rf ./webapps/*

COPY vprofile-v2.war ./webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]