# Stage 1: Сборка зависимостей
FROM python:3.10.4 AS build

WORKDIR /code

# Устанавливаем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь код проекта
COPY . .

# Stage 2: Запуск приложения
FROM python:3.10.4

WORKDIR /code

# Копируем зависимости из первого этапа
COPY --from=build /usr/local/lib/python3.10/site-packages /usr/local/lib/python3.10/site-packages

# Копируем код проекта
COPY --from=build /code /code

# Переменная для корректной обработки вывода
ENV PYTHONUNBUFFERED=1

# Открываем порт
EXPOSE 8000

# Команда запуска
CMD ["sh", "-c", "python manage.py migrate && python manage.py collectstatic --noinput && python manage.py runserver 0.0.0.0:8000"]