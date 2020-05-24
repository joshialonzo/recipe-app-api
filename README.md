# Recipe app API
Recipe app API source code.

## Run project

#### Clone project
    git clone https://github.com/joshialonzo/recipe-app-api.git

#### Get into the project folder
    cd recipe-app-api

#### Build Docker image
    docker build .

#### Clean Docker completely
    docker system prune --all --force --volumes

#### Build images from Docker Compose
    docker-compose build

#### Create Django project
    docker-compose run app sh -c "django-admin startproject app ."

#### Run tests locally
    docker-compose run app sh -c "python manage.py test"