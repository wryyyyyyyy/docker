FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping"]
CMD ["-c4 172.17.0.1 -I eth0"]
