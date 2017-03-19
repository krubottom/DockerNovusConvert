FROM postgres:9.5
MAINTAINER Karl Rubottom "karl.rubottom@gmail.com"

RUN apt-get update
RUN apt-get install -y python python-pip wget python-dev libpq-dev
RUN pip install --upgrade pip
RUN pip install psycopg2
RUN pip install Flask
RUN pip install Flask-wtf
RUN apt-get install -y git

WORKDIR /var

ENTRYPOINT git clone https://github.com/krubottom/novus-convert && cd /var/novus-convert/ && python /var/novus-convert/server.py
