FROM node:16.15

ARG DATABASE_URL
ARG PORT

EXPOSE ${PORT}

WORKDIR /pixelpulp-indexer
ADD . /pixelpulp-indexer
RUN yarn install
RUN yarn build
CMD yarn start