FROM openjdk:8-slim-buster 

RUN apt update && \
    apt install -y procps && \
    rm -rf /var/lib/apt/lists/*

COPY Main.class /
COPY appstartup.sh /
COPY libertystartup.sh /

CMD ["/appstartup.sh"]
