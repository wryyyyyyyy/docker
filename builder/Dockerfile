FROM alpine:latest as builder
WORKDIR /builder
RUN apk update && \
    apk add gcc make libc-dev libnsl-dev
RUN wget ftp://ftp.lysator.liu.se/pub/unix/pnscan/pnscan-1.11.tar.gz && tar zxvf pnscan-1.11.tar.gz && cd pnscan-1.11 && gcc -Wall -ffunction-sections -fdata-sections -g0 -Os -c -o pnscan.o pnscan.c && gcc -Wall -ffunction-sections -fdata-sections -g0 -Os -c -o bm.o bm.c && gcc -Wall -ffunction-sections -fdata-sections -g0 -Os -c -o version.o version.c && gcc -Wall -ffunction-sections -fdata-sections -g0 -Os -Wl,-s -o pnscan pnscan.o bm.o version.o -lpthread -lnsl -static && strip -s pnscan
COPY .  ./
RUN ls -la

FROM scratch
WORKDIR /
COPY --from=builder ./pnscan-1.11/pnscan ./pnscan-1.11/ipsort ./
RUN pwd && ls -la
ENTRYPOINT ["./pnscan"]
CMD ["-h"]
