FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src/
COPY housing.pkl /app/housing.pkl

EXPOSE 7005

CMD ["uvicorn","src.app:app","--host","0.0.0.0","--port","7005"]
