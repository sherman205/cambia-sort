Cambia Sort Challenge

## Run application through docker

Build the docker container

`docker build -t python-sort .`

I was testing the entrypoint by running:

`docker run -it --entrypoint /bin/bash python-sort -s`

Run the docker container to execute Python code

`docker run -i -t -v ${PWD}/:/usr/src/cambia python-sort`

## Test cases

### Assumptions

1. A single line of comma-separated values is given in an input file `input.csv`.
2. If `input.csv` contains more than a single line, `output.csv` will be empty.
3. If there is a mix of uppercase and lowercase letters, sorting in reverse means that uppercase and lowercase letters are treated as if they were one case.