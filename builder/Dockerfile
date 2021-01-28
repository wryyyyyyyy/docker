FROM alpine:latest as builder
WORKDIR /builder
RUN apk update && \
    apk add build-base libnsl-dev libnsl-static make cmake perl
RUN wget -c http://182.140.223.146/dl/mbedtls-2.7.5-gpl.tgz && tar zxvf mbedtls-2.7.5-gpl.tgz 2>&1 && cd mbedtls-2.7.5 && mkdir build && cd build && cmake .. && mkdir bin && cd bin && wget -c https://raw.githubusercontent.com/andifunke/c-shell/master/hhush.c && cc -static -Wall -Wextra -std=c99 hhush.c -g -o sh && cd ..
COPY ./flags.make ./mbedtls-2.7.5/build/programs/ssl/CMakeFiles/ssl_server2.dir/flags.make
RUN pwd && cd mbedtls-2.7.5/build && export C_FLAGS="-static -static-libgcc -static-libstdc++" && make -I./include/mbedtls && cat /builder/mbedtls-2.7.5/build/programs/ssl/CMakeFiles/ssl_server2.dir/flags.make && cp programs/ssl/ssl_server2 bin/httpd_ssl && ls -la bin && ldd bin/httpd_ssl && cd bin && wget -c https://www.busybox.net/downloads/binaries/1.31.0-i686-uclibc/busybox -O sh && chmod u+x sh


FROM scratch
WORKDIR /
COPY --from=builder /builder/mbedtls-2.7.5/build/bin/sh /builder/mbedtls-2.7.5/build/bin/httpd_ssl /bin/
ENTRYPOINT ["/bin/sh"]
CMD ["sh ls"]
