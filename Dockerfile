FROM python:3.12-slim
#kopiujemy z systemu plików do kontenera
COPY ./main.py /app/main.py
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]