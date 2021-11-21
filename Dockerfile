# syntax=docker/dockerfile:1
FROM node:12-alpine
WORKDIR /docker-getting-started
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]
