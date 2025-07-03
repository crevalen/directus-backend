# Dockerfile
FROM directus/directus:latest

# 1. Install pnpm secara global di dalam container
RUN npm install -g pnpm

# 2. Salin file dependensi
COPY ./package.json ./pnpm-lock.yaml* .

# 3. Jalankan instalasi menggunakan pnpm
# --frozen-lockfile memastikan instalasi sesuai persis dengan lock file
RUN pnpm install --frozen-lockfile

# 4. Salin sisa file proyek
COPY . .