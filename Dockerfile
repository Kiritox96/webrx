FROM node:12.9.0-alpine
RUN apk add --no-cache git
COPY . ./webrx
WORKDIR /webrx
COPY package.json .
RUN npm install
COPY . .
EXPOSE 4200
CMD ["npm", "start"]
