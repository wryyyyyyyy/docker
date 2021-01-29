FROM scratch
WORKDIR /
COPY /bin /bin
ENTRYPOINT ["httpd_ssl"]
CMD ["-p 443 -d -N -S github_host -i -g -C 1024 -2 -x"]
