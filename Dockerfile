FROM python:3.8.5-alpine3.12

RUN apk add --no-cache \
    gcc \
    musl-dev && \
    pip install pylint==2.5.3 \
    pylint_django==2.3.0 \
    pycodestyle==2.6.0 \
    flake8==3.8.3 \
    black==20.8b1 \
    mypy==0.790 \
    isort==5.6.4

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
