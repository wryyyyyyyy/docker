FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping","-c 4"]
CMD ["-I /dev/eth0","1.1.1.1"]
