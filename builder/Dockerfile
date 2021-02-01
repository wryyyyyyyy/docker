FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping","-c 4"]
CMD ["-I docker0","1.1.1.1"]
