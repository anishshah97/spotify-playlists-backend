# Dockerfile
FROM python:3.7.4

EXPOSE 5000

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE 1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED 1

# Install pip requirements
ADD requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /flask-api

ENV FLASK_APP=flask-api.py
ENV FLASK_ENV=development

CMD ["flask", "run", "--host", "0.0.0.0"]
