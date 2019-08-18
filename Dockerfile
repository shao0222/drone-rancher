FROM alpine:3.9 as alpine
RUN apk add -U --no-cache ca-certificates

LABEL org.label-schema.version=latest
LABEL org.label-schema.vcs-url="https://github.com/josmo/drone-rancher.git"
LABEL org.label-schema.name="Drone Rancher"
LABEL org.label-schema.vendor="Josmo"

ADD release/linux/amd64/drone-rancher /bin/
ENTRYPOINT ["/bin/drone-rancher"]
