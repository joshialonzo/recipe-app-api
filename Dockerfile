FROM python:3.8-alpine
MAINTAINER Josué Alonzo Chavarría

# set an env variable
ENV PYTHONUNBUFFERED 1

# copy requirements file from host to container
COPY ./requirements.txt /requirements.txt
# install postgres server client
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
    gcc libc-dev linux-headers postgresql-dev
# install all python packages
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

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

