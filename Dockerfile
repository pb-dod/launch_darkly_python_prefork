FROM python:3.8.13-slim-buster

RUN apt-get update && apt-get -y install \
    build-essential

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY . /code
WORKDIR /code

CMD ["uwsgi", "--ini", "/code/uwsgi.ini"]
