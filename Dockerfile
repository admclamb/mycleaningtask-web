FROM node:lts-alpine

WORKDIR /app

RUN npm install -g pnpm@10.27.0

COPY package*.json ./

RUN pnpm ci

COPY . ./

RUN pnpm run build

CMD ["pnpm", "run", "start"]