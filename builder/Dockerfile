FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping6", "-c 4"]
CMD ["${IPV6}"]
