FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping6", "-c 4"]
CMD ["echo `ip address show|grep 'scope link'|awk '{print $2}'|perl -i -pe 's/\/64//g'`%eth0"]
