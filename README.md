# Recipe app API
Recipe app API source code.

## Run project

#### Clone project
    git clone https://github.com/joshialonzo/recipe-app-api.git

#### Get into the project folder
    cd recipe-app-api

#### Build Docker image
    docker build .

### Remove Docker containers
    docker system prune

#### Clean Docker completely
    docker system prune --all --force --volumes

#### Build images from Docker Compose
    docker-compose build

#### Create Django project
    docker-compose run app sh -c "django-admin startproject app ."

#### Run tests locally
    docker-compose run app sh -c "python manage.py test"

#### Run tests and linter locally
    docker-compose run app sh -c "python manage.py test && flake8"

#### Create Django core app
    docker-compose run app sh -c "python manage.py startapp core"

#### Run Django migrations
    docker-compose run app sh -c "python manage.py makemigrations core"

#### Run Django application
    docker-compose up

#### Create Django superuser
    docker-compose run app sh -c "python manage.py createsuperuser"

#### Run container and delete container after stopping
    docker-compose run --rm app sh -c "python manage.py runserver 0.0.0.0:8000"

#### Create Django user app and delete container after stopping
    docker-compose run --rm app sh -c "python manage.py startapp user"