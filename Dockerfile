# Dockerfile
FROM directus/directus:latest

COPY ./package.json .
RUN npm install
COPY . .