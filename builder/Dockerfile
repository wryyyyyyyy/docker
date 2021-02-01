FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping6", "-c 4"]
CMD ["fe80::20d:3aff:fe9b:dec1%eth0"]
