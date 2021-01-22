FROM scratch as builder
COPY . /

FROM scratch
COPY --from=builder / .
ENTRYPOINT ["./init"]
