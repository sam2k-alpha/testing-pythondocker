# syntax=docker/dockerfile:1
FROM python:3.7-alpine
RUN mkdir -p /var/www/html/testing-pythondocker
COPY . /var/www/html/testing-pythondocker
WORKDIR /var/www/html/testing-pythondocker
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
