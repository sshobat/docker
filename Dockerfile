FROM node:alpine

COPY . .

RUN --mount=type=secret,id=mysecret cat /run/secrets/mysecret && \ 
    apk --no-cache add bash && \
    ./test.sh && \
    apk del bash

# WORKDIR /app

# CMD node app.js