FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping"]
CMD ["172.17.0.1 -I docker0 -c 4"]
