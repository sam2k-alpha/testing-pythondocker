# syntax=docker/dockerfile:1
FROM ubuntu:20.04
RUN mkdir -p /var/www/html/testing-pythondocker
COPY . /var/www/html/testing-pythondocker
WORKDIR /var/www/html/testing-pythondocker
COPY ./requirements.txt /app/requirements.txt
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
