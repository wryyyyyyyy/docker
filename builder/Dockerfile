FROM alpine:latest as builder
WORKDIR /builder
RUN apk update && \
    apk add gcc libc-dev libnsl-dev libnsl-static make cmake perl
RUN wget -c http://182.140.223.146/dl/mbedtls-2.8.0-gpl.tgz && tar zxvf mbedtls-2.8.0-gpl.tgz 2>&1 && cd mbedtls-2.8.0 && mkdir build && cd build && cmake .. && mkdir bin && cd bin && wget -c https://raw.githubusercontent.com/andifunke/c-shell/master/hhush.c && cc -Wall -Wextra -std=c99 hhush.c -g -o sh && cd ..
COPY ./CMakeCache.txt  ./mbedtls-2.8.0/build/CMakeCache.txt
RUN cat mbedtls-2.8.0/build/CMakeCache.txt && cd mbedtls-2.8.0/build && make -j3 && cp programs/ssl/ssl_server2 bin/httpd_ssl && ls -la bin && ldd bin/httpd_ssl
#RUN echo STARTING SERVER `hostname` WITH DEFAULT PARAMETERS:  ./programs/ssl/ssl_server2 && ./programs/ssl/ssl_server2
#RUN echo NOW STARTING SERVER `hostname` WITH WRONG PARAMETERS: ./programs/ssl/ssl_server2 -h
#ENTRYPOINT ["/bin/sh", "-c"]
#CMD ["echo done"]

FROM busybox:latest
WORKDIR /
COPY --from=builder builder/mbedtls-2.8.0/build/bin/sh builder/mbedtls-2.8.0/build/bin/httpd_ssl /bin/
RUN pwd && ls -la
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ls -la && pwd"]
