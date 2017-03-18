FROM postgres:9.5
MAINTAINER Karl Rubottom "karl.rubottom@gmail.com"

RUN apt-get update
RUN apt-get install -y python python-pip wget
RUN pip install --upgrade pip
RUN pip install Flask
RUN pip install Flask_wtf
RUN apt-get install -y git
