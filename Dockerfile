FROM registry.access.redhat.com/ubi8/ubi:latest as builder

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

FROM registry.access.redhat.com/ubi9/ubi:latest

FROM scratch
COPY --from=builder /entrypoint.sh /
