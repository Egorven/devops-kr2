FROM python:3.12-slim

WORKDIR /app

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8001
CMD ["gunicorn", "--bind", "0.0.0.0:8001", "app:app"]