# interpreted applications (PYTHON) should use /usr/src folder !!!
FROM python:3

RUN mkdir -p /usr/src/cambia
COPY . /usr/src/cambia

WORKDIR /usr/src/cambia
VOLUME ["/usr/src/cambia"]

CMD [ "python", "./sort/sort.py" ]
