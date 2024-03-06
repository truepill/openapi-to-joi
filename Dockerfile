FROM node:18.12.1-alpine

WORKDIR /
COPY src src 
COPY tsconfig.json tsconfig.json
COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install && yarn cache clean

ENV YARN_SILENT=1

CMD ["yarn", "start"]