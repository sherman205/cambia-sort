# Cambia Sort Challenge

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
4. If there are non-alphanumeric characters in the entries, then they have a higher sorting precedence to alphabetical characters. So $tockholm comes after Stockholm when sorted in descending alphabetical order.

### Test cases involved in testing this program

- \n
- London,Oslo,Stockholm\n \n
- London,Stockholm,Oslo\n
- Stockholm,Oslo,London\n
- London,Oslo,Stockholm\n
- London,Stockholm,Stockholm,Oslo\n
- Stockholm,Moscow,Sofia\n Oslo,Ukraine\n
- london,Oslo,Stockholm,stockholm,\n
- London\n
- Dubai,London,Stockholm,Kiev,Delhi,Brussels,Moscow,Oslo,Dublin,Paris,Frankfurt,Bucharest,Vienna,Prague,Jerusalem,Lisbon,Barcelona,Bogota,Sofia\n
- Stockholm,Portugal,P@ris,London!,London,$tockholm\n

## Cambia Questions

Answers to questions about Gherkin, Tools, and Testing Methodology can be found in `CambiaQuestions.txt`
