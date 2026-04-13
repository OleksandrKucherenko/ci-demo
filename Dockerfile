FROM alpine:3.21
LABEL org.opencontainers.image.source="https://github.com/OleksandrKucherenko/ci-demo"
WORKDIR /app
COPY package.json ./
COPY packages/ ./packages/
