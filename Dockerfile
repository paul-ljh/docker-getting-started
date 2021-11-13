# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /docker-getting-started
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
