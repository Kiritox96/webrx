FROM node:12.9.0-alpine
RUN apk add --no-cache git
COPY . ./webrx
WORKDIR /webrx
RUN npm install
EXPOSE 4200
ENTRYPOINT ["npm"]
CMD ["start --host 0.0.0.0"]
