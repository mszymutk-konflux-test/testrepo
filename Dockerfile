FROM registry.access.redhat.com/ubi8/ubi:latest as builder

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

FROM scratch
COPY --from=builder /entrypoint.sh /
COPY --from=builder /usr/bin/curl /bin/
