# README file for Cambia sort challenge

## Build docker container

`docker build -t python-sort .`

`docker run python-sort`

### test entrypoint
`docker run -it --entrypoint /bin/bash python-sort -s`

### should probably do this:

`docker run -v /Users/sophiasherman/projects/cambia-sort/:/usr/src/sort -d python-sort`