FROM node:11.6.0-alpine AS builder
RUN apk add --no-cache git
COPY . ./webrx
WORKDIR /webrx
RUN npm i
RUN $(npm bin)/ng build --prod

FROM nginx:1.15.8-alpine
COPY --from=builder /webrx/dist/webrx/ /usr/share/nginx/html