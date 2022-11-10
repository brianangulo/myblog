# Common build stage
FROM node:14.17.0-alpine3.12 as common-build-stage

COPY . ./app

WORKDIR /app

RUN yarn

# Development build stage
FROM common-build-stage as development-build-stage

CMD ["yarn", "dev"]

# Production build stage
FROM common-build-stage as production-build-stage

CMD yarn build && yarn start
