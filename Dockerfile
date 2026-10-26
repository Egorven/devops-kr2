FROM python:3.12-slim
WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN useradd -m appuser
USER appuser
EXPOSE 8001

CMD ["gunicorn", "--bind", "0.0.0.0:8001", "app:app"]