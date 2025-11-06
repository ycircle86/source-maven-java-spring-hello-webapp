FROM	tomcat:9-jre17
COPY	target/hello-world.war /usr/localtomcat/webapps
