FROM alpine:latest as builder
WORKDIR /builder
RUN apk update && \
    apk add gcc libc-dev libnsl-dev libnsl-static
RUN wget ftp://ftp.lysator.liu.se/pub/unix/pnscan/pnscan-1.11.tar.gz && tar zxvf pnscan-1.11.tar.gz && cd pnscan-1.11 && gcc -Wall -ffunction-sections -fdata-sections -g0 -Os -c -o pnscan.o pnscan.c && gcc -Wall -ffunction-sections -fdata-sections -g0 -Os -c -o bm.o bm.c && gcc -Wall -ffunction-sections -fdata-sections -g0 -Os -c -o version.o version.c && gcc -Wall -ffunction-sections -fdata-sections -g0 -Os -Wl,-s -o pnscan pnscan.o bm.o version.o -lpthread -lnsl -static && strip -s pnscan && mkdir bin && cd bin && wget -c https://raw.githubusercontent.com/andifunke/c-shell/master/hhush.c && cc -Wall -Wextra -std=c99 hhush.c -g -o sh && cd ..
COPY .  ./
RUN pwd && ls -la pnscan-1.11/ && ls -la pnscan-1.11/bin/ #&& ldd pnscan-1.11/pnscan
#ENTRYPOINT ["./pnscan-1.11/pnscan"]
#CMD ["-h"]

FROM scratch
WORKDIR /
COPY --from=builder builder/pnscan-1.11/bin/ builder/pnscan-1.11/pnscan builder/pnscan-1.11/ipsort ./
RUN pwd && ls -la
ENTRYPOINT ["./pnscan"]
CMD ["-h"]
