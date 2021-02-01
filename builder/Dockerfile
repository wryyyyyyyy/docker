FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./tracepath","-n"]
CMD ["-I eth0","168.63.129.16"]
