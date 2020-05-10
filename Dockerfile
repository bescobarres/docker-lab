FROM ubuntu_unminimized
RUN apt-get update -y
RUN apt-get install -y curl 
RUN apt-get install -y vim && apt-get install -y 2ping && apt-get install -y jp2a 

ADD https://i.pinimg.com/564x/24/15/cd/2415cd08c501860404a5feb28c79e157.jpg /tmp/img.jpg
ENV TERM xterm-256color
CMD jp2a --size=60*40 /tmp/img.jpg