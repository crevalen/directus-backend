# Dockerfile
FROM directus/directus:latest

# 1. Beralih sementara ke user root untuk mendapatkan izin instalasi
USER root

# 2. Install pnpm secara global sebagai root
RUN npm install -g pnpm

# 3. PENTING: Kembali ke user biasa ('node') untuk keamanan
USER node

# 4. Lanjutkan proses seperti biasa sebagai user biasa
COPY ./package.json ./pnpm-lock.yaml* .
RUN pnpm install --frozen-lockfile
COPY . .