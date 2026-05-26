# ── Etapa única: imagen slim oficial de Node 24 ──────────────────────────────
FROM node:24-slim

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
