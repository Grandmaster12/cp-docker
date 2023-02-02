# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
LABEL org.containers.image.authors="spetersen555@gmail.com"
RUN mkdir /python-docker
WORKDIR /python-docker
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
ENV FLASK_APP=app
EXPOSE 5001
CMD [ "python3", "app.py"]