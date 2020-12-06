FROM openjdk:11-slim

RUN apt update && \
    apt install -y procps && \
    rm -rf /var/lib/apt/lists/*

COPY Main.class /
COPY appstartup.sh /
COPY libertystartup.sh /

CMD ["/appstartup.sh"]
