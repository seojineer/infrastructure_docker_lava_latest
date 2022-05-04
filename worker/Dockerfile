FROM lavasoftware/amd64-lava-dispatcher:latest

RUN apt-get update && apt-get install -y vim net-tools

COPY etc/lava-disptcher/lava-worker /etc/lava-dispatcher/lava-worker

expose 69 80 5500 5555 5556
