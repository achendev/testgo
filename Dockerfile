FROM golang:alpine as build
COPY . .
RUN go build viewer.go && go build executor.go

FROM alpine
WORKDIR /opt/test
COPY --from=build /go/viewer /go/executor ./
CMD ["/opt/test/viewer"]
