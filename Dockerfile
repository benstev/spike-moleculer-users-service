FROM node:10.12.0-alpine

ENV NODE_ENV=production

RUN mkdir /app
WORKDIR /app

COPY package.json .

RUN npm install --env=production

COPY . .

CMD ["npm", "start"]
