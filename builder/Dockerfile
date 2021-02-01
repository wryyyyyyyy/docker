FROM scratch
WORKDIR /
COPY ./ ./
ENTRYPOINT ["/iputils/./ping6", "-c 4"]
CMD ["2001:4860:4860::8888"]
