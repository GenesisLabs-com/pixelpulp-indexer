FROM node:16.15

EXPOSE 3001

WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
COPY . .

RUN yarn install
RUN yarn build

CMD yarn start
