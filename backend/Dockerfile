FROM python:3.10.4

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
CMD ["python", "manage.py", "runserver", "0.0.0.0:9000"]