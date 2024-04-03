FROM node:20.0.0

COPY . /app
WORKDIR /app

RUN npm install -g pnpm@8.12.0
RUN pnpm i

ENV NODE_ENV=production
ENV SECRET_KEY="d8eddb83a185a1e7739773ea0ca053cdf1c4a5bbd974a962b17dfeee39268d89---SET_A_SECRET_KEY_IN_CONTAINER_ENV_VARIABLES---d8eddb83a185a1e7739773ea0ca053cdf1c4a5bbd974a962b17dfeee39268d89"

RUN pnpm generate && npx next build

CMD npm run start
