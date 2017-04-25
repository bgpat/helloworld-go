FROM golang:alpine AS build-env
ADD main.go /main.go
RUN go build -o /main /main.go

FROM alpine:3.5
COPY --from=build-env /main /main
CMD ["/main"]
