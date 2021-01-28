FROM scratch
WORKDIR /
COPY /bin /bin
ENTRYPOINT ["httpd_ssl"]
CMD ["server_addr=127.0.0.1 server_port=443 debug_level=2 cookies=1 ca_path=/ssl crt_file=server.v1.crt key_file=server1.key alpn=default"]
