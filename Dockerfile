FROM node:24-alpine3.21

WORKDIR /usr/src/axoma

COPY src/client/package*.json ./

RUN npm ci

COPY . .

RUN nx run-many --target=build

EXPOSE 8080
