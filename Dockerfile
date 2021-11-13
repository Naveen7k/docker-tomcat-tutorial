FROM senthil123/dockertomcat
RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
LABEL Author="prabu"
LABEL description="Use dockertomcat image as base image for dockertomcat deployment"
USER root
COPY  *.war /usr/local/tomcat/webapps/
EXPOSE 8080
