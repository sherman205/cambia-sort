Feature: Ensure reading and writing operations of csv files are successful

Scenario: Program cannot open input.csv to read
	Given the input is a CSV file
	When the sort program is run
	Then there is an error printed to the console

Scenario: Program cannot write to output.csv
	Given the input is a CSV file
	When the sort program is run
	Then there is an error printed to the console
