FROM docker.io/ibmcom/websphere-liberty:20.0.0.5-full-java11-openj9-ubi
RUN mkdir /my-special-dir
COPY Dockerfile /my-special-dir/Dockerfile
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
