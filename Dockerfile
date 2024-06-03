# syntax=docker/dockerfile:1

FROM python:3.9
WORKDIR /cw_flask_ci_cd/app
COPY requirements.txt /cw_flask_ci_cd
RUN pip install --no-cache-dir -r /cw_flask_ci_cd/requirements.txt
COPY . .
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["python", "app/app.py"]