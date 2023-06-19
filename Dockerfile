FROM node:18.12.1-alpine

COPY src src 
COPY tsconfig.json tsconfig.json
COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn 

ENV YARN_SILENT=1

CMD yarn start 