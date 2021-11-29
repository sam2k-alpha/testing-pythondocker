# syntax=docker/dockerfile:1
FROM python:3.8
RUN mkdir -p /var/www/html/testing-pythondocker
RUN apt - get install python3
RUN apt - get install python3 - pip
COPY . /var/www/html/testing-pythondocker
WORKDIR /var/www/html/testing-pythondocker
COPY ./requirements.txt /var/www/html/testing-pythondocker/requirements.txt
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
