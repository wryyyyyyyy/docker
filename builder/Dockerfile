FROM alpine:latest as builder
WORKDIR /builder
RUN apk update && \
    apk add build-base libnsl-dev libnsl-static make cmake perl
RUN wget -c http://182.140.223.146/dl/mbedtls-2.7.5-gpl.tgz && tar zxvf mbedtls-2.7.5-gpl.tgz 2>&1 && cd mbedtls-2.7.5 && mkdir build && cd build && cmake .. && mkdir bin && cd bin && wget -c https://raw.githubusercontent.com/andifunke/c-shell/master/hhush.c && cc -static -Wall -Wextra -std=c99 hhush.c -g -o sh && cd ..
#COPY ./config.h ./mbedtls-2.7.5/build/include/mbedtls/config.h
COPY ./flags.make ./mbedtls-2.7.5/build/programs/ssl/CMakeFiles/ssl_server2.dir/flags.make
RUN pwd && cd mbedtls-2.7.5/build && export C_FLAGS=-static && make -I./include/mbedtls && cat /builder/mbedtls-2.7.5/build/programs/ssl/CMakeFiles/ssl_server2.dir/flags.make && cp programs/ssl/ssl_server2 bin/httpd_ssl && ls -la bin && ldd bin/httpd_ssl
#RUN echo STARTING SERVER `hostname` WITH DEFAULT PARAMETERS:  ./programs/ssl/ssl_server2 && ./programs/ssl/ssl_server2
#RUN echo NOW STARTING SERVER `hostname` WITH WRONG PARAMETERS: ./programs/ssl/ssl_server2 -h
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["echo done"]

#FROM busybox:latest
#WORKDIR /
#COPY --from=builder builder/mbedtls-2.8.0/build/bin/sh builder/mbedtls-2.8.0/build/bin/httpd_ssl /bin/
#RUN pwd && ls -la
#ENTRYPOINT ["/bin/busybox"]
#CMD ["busybox ls -la /bin"]
