FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY server.js raClient.js ./
COPY public ./public

ENV NODE_ENV=production
USER node

EXPOSE 3000

CMD ["node", "server.js"]
