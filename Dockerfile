
FROM node:alpine
RUN --mount=type=secret,id=mysecret cat /run/secrets/mysecret

# COPY . /app
# WORKDIR /app

# CMD node app.js