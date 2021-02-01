FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/bin/sh","-c"]
CMD ["/iputils/tracepath -n 172.17.0.1"]
CMD ["sh"]
