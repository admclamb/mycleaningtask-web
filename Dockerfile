FROM node:lts-alpine

WORKDIR /app

RUN npm install -g pnpm

COPY package*.json ./

RUN pnpm ci

COPY . ./

RUN pnpm run build

CMD ["pnpm", "run", "start"]