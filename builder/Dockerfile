FROM alpine:latest as builder
WORKDIR /builder
RUN apk update && \
    apk add gcc libc-dev libnsl-dev libnsl-static make cmake curl perl
RUN wget -c http://182.140.223.146/dl/mbedtls-2.8.0-gpl.tgz && tar zxvf mbedtls-2.8.0-gpl.tgz 2>&1 && cd mbedtls-2.8.0 && mkdir build && cd build && cmake .. && mkdir bin && cd bin && wget -c https://raw.githubusercontent.com/andifunke/c-shell/master/hhush.c && cc -Wall -Wextra -std=c99 hhush.c -g -o sh && cd ..
COPY .  ./
RUN pwd && ls -la mbedtls-2.8.0/build && ls -la mbedtls-2.8.0/build/bin

FROM scratch
WORKDIR /
COPY --from=builder builder/mbedtls-2.8.0/build/bin/sh /bin/sh
ENTRYPOINT ["/bin/sh"]
CMD ["date"]
