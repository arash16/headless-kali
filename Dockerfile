FROM kalilinux/kali-rolling
USER root
RUN apt update
RUN apt -y install kali-linux-headless

WORKDIR    /root
COPY       entry.sh entry.sh
ENTRYPOINT [ "/app/entry.sh" ]
