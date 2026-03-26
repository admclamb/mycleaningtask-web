FROM node:lts-alpine

WORKDIR /app

RUN npm install -g pnpm@10.27.0

COPY package.json pnpm-lock.yaml ./

RUN pnpm i --frozen-lockfile

COPY . ./

RUN pnpm run build

CMD ["pnpm", "exec", "ng", "serve", "--host", "0.0.0.0", "--port", "4200"]