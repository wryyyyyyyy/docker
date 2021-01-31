FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping","-c 4"]
CMD ["-I docker0","172.17.0.1"]
