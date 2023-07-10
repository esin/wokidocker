FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nmap whois inetutils-ping curl inetutils-traceroute dnsutils nano && \
    useradd -s /bin/bash -m hacker && \
    apt-get autoclean && apt-get autoremove -y

USER hacker
