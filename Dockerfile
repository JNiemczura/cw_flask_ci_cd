# syntax=docker/dockerfile:1

FROM python:3.9
WORKDIR /cw_flask_ci_cd
COPY requirements.txt /cw_flask_ci_cd
RUN pip install --no-cache-dir -r requirements.txt
COPY . /cw_flask_ci_cd
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]