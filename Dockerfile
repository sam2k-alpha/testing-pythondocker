# syntax=docker/dockerfile:1
FROM python:3.8
RUN mkdir -p /var/www/html/testing-pythondocker
COPY . /var/www/html/testing-pythondocker
WORKDIR /var/www/html/testing-pythondocker
COPY ./requirements.txt /var/www/html/testing-pythondocker/requirements.txt
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD ["app.py"]
