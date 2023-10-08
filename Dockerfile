
FROM python:3.11.6-slim

WORKDIR /app

COPY requirements.txt .
COPY calculator_api.py .

# Установите зависимости
RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python"]
CMD ["calculator_api.py"]