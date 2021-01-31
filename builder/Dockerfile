FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./tracepath"]
CMD ["172.17.0.1 -I docker0"]
