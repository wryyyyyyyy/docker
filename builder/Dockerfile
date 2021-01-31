FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping"]
CMD ["-c 4 172.17.0.1 -I docker0"]
