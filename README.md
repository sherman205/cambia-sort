# README file for Cambia sort challenge

## Run application through docker

Build the docker container

`docker build -t python-sort .`

I was testing the entrypoint by running:

`docker run -it --entrypoint /bin/bash python-sort -s`

Run the docker container to execute Python code

`docker run -i -t -v ${PWD}/:/usr/src/cambia python-sort`
