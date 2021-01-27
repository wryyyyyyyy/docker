FROM alpine:latest
WORKDIR /
COPY ./pnscan-1.11/pnscan ./pnscan-1.11/ipsort ./
RUN ls -la && chmod u+x pnscan
ENTRYPOINT ["./pnscan"]
CMD ["-h"]
