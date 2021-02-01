FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping6", "-c 4"]
CMD ["fe80::20d:3aff:fe9b:8a1c%eth0"]
