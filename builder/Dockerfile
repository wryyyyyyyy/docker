FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./tracepath","-n"]
CMD ["scanme.nmap.org"]
