# Stage 1: Сборка фронтенда
FROM node:18 AS build

WORKDIR /app

# Копируем зависимости
COPY package.json package-lock.json ./
RUN npm ci

# Копируем исходники и собираем проект
COPY . .
RUN npm run build

# Stage 2: Запуск сервера (http-server)
FROM node:18-alpine

WORKDIR /app

# Копируем только собранные файлы
COPY --from=build /app/build /app/build

# Используем http-server через npx для обслуживания статики
EXPOSE 8000
CMD ["npx", "-y", "http-server", "-p", "8000", "/app/build"]
