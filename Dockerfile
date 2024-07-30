FROM node:16 AS build

WORKDIR /work
RUN npm install -g pnpm@8
COPY package*.json ./
COPY pnpm-lock.yaml ./
RUN pnpm install
COPY . .
RUN pnpm run build

FROM nginx:1-alpine AS pages
COPY --from=build /work/dist/ /usr/share/nginx/html/
EXPOSE 80
