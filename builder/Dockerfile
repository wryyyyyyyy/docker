FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping6", "-c 4"]
CMD ["::1%eth0"]
