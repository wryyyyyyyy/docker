FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping"]
CMD ["-c 4 1.1.1.1"]
