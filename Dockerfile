
FROM ubuntu:22.04

LABEL manteiner="https://github.com/DarFig"

RUN apt-get update && \
    apt-get install -y openssh-server



# add files    
ADD run.sh /run.sh
ADD sshd_config /etc/ssh/sshd_config
RUN chmod a+x /run.sh


# env-var
ENV USER=""
ENV HASH=""

EXPOSE 22

WORKDIR /


ENTRYPOINT ["/run.sh"]
