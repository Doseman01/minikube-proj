#Buildstage
FROM python:3.11-slim AS builder

WORKDIR /app

COPY . .

RUN apt-get update &&\
    apt-get upgrade -y -qq
    
RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "runserver", "0.0.0.0:5000", "app.py"]
