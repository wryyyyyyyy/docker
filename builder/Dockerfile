FROM scratch
WORKDIR /
COPY /bin /bin
ENTRYPOINT ["httpd_ssl"]
CMD ["-p 1488 -d -N -S localhost -i -g -C 1024 -2 -x"]
