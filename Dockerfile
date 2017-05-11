FROM golang:alpine AS build-env
ADD main.go /main.go
RUN go build -o /main /main.go

FROM scratch
COPY --from=build-env /main /main
CMD ["/main"]
