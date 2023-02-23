FROM node:16.15

ARG PORT

EXPOSE ${PORT}

WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
COPY . .

RUN yarn install
RUN yarn build

CMD yarn start
