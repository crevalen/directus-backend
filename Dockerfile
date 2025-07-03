# Dockerfile (Versi Final)
FROM directus/directus:latest

# Langsung salin file dependensi
COPY ./package.json ./pnpm-lock.yaml* .

# Langsung jalankan pnpm install (karena sudah tersedia di dalam image)
RUN pnpm install --frozen-lockfile

# Salin sisa file proyek
COPY . .