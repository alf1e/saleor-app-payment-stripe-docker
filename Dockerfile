FROM node:20.0.0

COPY . /app
WORKDIR /app

RUN npm install -g pnpm@8.12.0
RUN pnpm i

ENV NODE_ENV=production
ENV SECRET_KEY="secret"

RUN pnpm generate && npx next build

CMD npm run start
