FROM python:3

WORKDIR /data

# Install distutils for managing Python packages
RUN apt-get update && apt-get install -y python3-distutils

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate
