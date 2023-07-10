FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nmap whois inetutils-ping curl dig inetutils-traceroute dnsutils nano && \
    useradd -s /bin/bash -m hacker

USER hacker