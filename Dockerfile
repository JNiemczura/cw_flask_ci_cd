# syntax=docker/dockerfile:1

FROM python:3.9
WORKDIR .
COPY . .
RUN flask run
FLASK_APP main.py
EXPOSE 3000