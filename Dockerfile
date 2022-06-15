FROM python:3.8.13-slim-buster

RUN apt-get update && apt-get -y install \
    build-essential

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY . /code
WORKDIR /code

CMD ["gunicorn", "-c", "/code/gunicorn.conf.py", "mysite.wsgi:application"]
