# syntax=docker/dockerfile:1
FROM ubuntu:20.04
RUN mkdir -p /var/www/html/testing-pythondocker
COPY . /var/www/html/testing-pythondocker
WORKDIR /var/www/html/testing-pythondocker
COPY ./requirements.txt /var/www/html/testing-pythondocker/requirements.txt
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
