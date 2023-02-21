FROM node:16.15

ARG DATABASE_URL
ARG PORT

EXPOSE ${PORT}

WORKDIR /app
ADD . /pixelpulp-indexer
RUN yarn install
RUN yarn build
CMD yarn start