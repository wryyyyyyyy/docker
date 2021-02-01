FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping6", "-c 4"]
CMD ["`ip address show|grep 'scope link'|awk '{print $2}'|tr -d '/64'`%eth0"]
