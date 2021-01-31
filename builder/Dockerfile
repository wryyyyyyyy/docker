FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping"]
CMD ["-c 4 -I docker0 172.17.0.1"]
