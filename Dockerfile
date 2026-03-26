FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN pnpm ci

COPY . ./

RUN pnpm run build

CMD ["pnpm", "run", "start"]