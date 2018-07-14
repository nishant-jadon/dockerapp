# FROM golang:1.8.4-jessie
# FROM golang:1.8.5-alpine3.6
FROM busybox

ADD hello-world /bin/hello-world

ENV NAME=world
ENTRYPOINT ["/bin/hello-world"]
