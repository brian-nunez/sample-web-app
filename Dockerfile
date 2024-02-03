FROM node:18.18.2

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

ENV HOST="0.0.0.0"
ENV PORT=5000

CMD [ "node", "dist/server/entry.mjs" ]
