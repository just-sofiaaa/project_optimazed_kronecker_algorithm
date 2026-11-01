FROM python:3.12-slim

WORKDIR /app

# в requirements.txt у вас лишнее, нужен только flet
RUN pip install --no-cache-dir "flet==0.28.3" "flet-web==0.28.3"

COPY . .

ENV RUN_IN_DOCKER=1
EXPOSE 8550

CMD ["python", "main.py"]