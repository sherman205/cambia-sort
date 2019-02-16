# interpreted applications (PYTHON) should use /usr/src folder !!!
FROM python:3

RUN mkdir -p /usr/src/sort
COPY . /usr/src/sort

WORKDIR /usr/src/sort

CMD [ "python", "./usr/src/sort/sort.py" ]