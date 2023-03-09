
FROM ubuntu:22.04

LABEL manteiner="https://github.com/DarFig"

RUN apt-get update && \
    apt-get install -y openssh-server



#     
ADD run.sh /run.sh
RUN chmod a+x /run.sh



EXPOSE 22

WORKDIR /


ENTRYPOINT ["/run.sh"]