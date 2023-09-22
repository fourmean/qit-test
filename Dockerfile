FROM python:3.10-slim

WORKDIR /app

RUN pip install fastapi uvicorn

COPY main.py /app/main.py

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
