FROM node:20 AS base
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
EXPOSE 5173
COPY . .

FROM base AS dev
CMD ["npm", "run", "dev", "--", "--host"]
