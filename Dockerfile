# Dockerfile
FROM directus/directus:latest

COPY ./package.json .
RUN npm install --no-package-lock

COPY . .