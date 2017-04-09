FROM postgres:9.5
MAINTAINER Karl Rubottom "karl.rubottom@gmail.com"

RUN apt-get update \
  && apt-get install -y python python-pip wget python-dev libpq-dev \
  && pip install --upgrade pip \
  && pip install psycopg2 \
  && pip install Flask \
  && pip install Flask-wtf \
  && apt-get install -y git

WORKDIR /var

ENTRYPOINT git clone https://github.com/krubottom/novus-convert && cd /var/novus-convert/ && python /var/novus-convert/server.py
