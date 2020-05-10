FROM ubuntu_unminimized
RUN apt-get update -y
RUN apt-get install -y curl 
RUN apt-get install -y vim && apt-get install -y 2ping
COPY test.txt /tmp/platzi
CMD cat /tmp/platzi