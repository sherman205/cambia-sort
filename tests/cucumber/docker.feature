Feature: The sort program is runnable with a Docker command

Scenario: There is no Dockerfile in the root directory
	Given cambia-sort dir does not contain a Dockerfile
	When building the image
	Then the Docker engine will crash when building an image

Scenario: Dockerfile has syntax errors
	Given cambia-sort dir contains a Dockerfile with syntax errors
	When building the image
	Then the Docker engine will crash when building an image

Scenario: Dockerfile has path or command errors
	Given cambia-sort dir contains a Dockerfile with logical errors
	When building the image
	Then the console will output specific errors to the console

Scenario: Docker image is built successfully
	Given the Dockerfile has no errors
	When the user builds the image using docker build
	Then the Docker image is built and tagged successfully

Scenario: Docker container finishes after running
	Given the image is built successfully
	When the user runs the container using docker run without -v option
	Then the container will exit after completition 
	And no errors will be outputted to the console
	But no output.csv file will exist in the local machine's current dir

Scenario: There is an output.csv file on the user's local machine after container completion
	Given the image is built successfully
	When the user runs the container using docker run -v with a mounted volume option
	Then the container will exit after completition 
	And no errors will be outputted to the console
	And an output.csv file will exist in the local machine's current dir
