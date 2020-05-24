FROM python:3.8-alpine
MAINTAINER Josué Alonzo Chavarría

# set an env variable
ENV PYTHONUNBUFFERED 1

# copy requirements file from host to container
COPY ./requirements.txt /requirements.txt
# install all python packages
RUN pip install -r /requirements.txt

# create app folder
RUN mkdir /app
# change directory to app
WORKDIR /app
# copy from host to container
COPY ./app /app

# create user that is going to run our app
RUN adduser -D user
# switch to that user
USER user

