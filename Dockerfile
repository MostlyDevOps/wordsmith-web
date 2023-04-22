# BUILD
# use the build platforms matching arch rather than target arch
FROM --platform=$BUILDPLATFORM golang:alpine as builder

ARG TARGETARCH

WORKDIR /go

COPY dispatcher.go .

# build for the target arch not the build platform host arch
RUN GOOS=linux GOARCH=$TARGETARCH go build dispatcher.go

# RUN
# defaults to using the target arch image
FROM scratch as run

COPY --from=builder /go/dispatcher /dispatcher
COPY static /static/

EXPOSE 80

CMD ["/dispatcher"]
