FROM ghcr.io/podkrepi-bg/go-devcontainer:v1.0.0 AS build
WORKDIR /app
COPY . /app

RUN task build

FROM alpine:3.14
ENV APP_ADDR :80
EXPOSE 80

COPY --from=build /app/output/module-contact /app/
CMD [ "/app/module-contact" ]
