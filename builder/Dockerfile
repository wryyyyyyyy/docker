FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping","-c 4"]
CMD ["-I enp0s3","172.17.0.1"]
