FROM node:20.0.0

COPY . /app
WORKDIR /app

RUN npm install -g pnpm@8.12.0
RUN pnpm i
RUN pnpm generate && npx next build

ENV NODE_ENV=production
ENV secret="secret"

CMD npm run start
