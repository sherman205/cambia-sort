Feature: Sort a single line of comma-separated strings from a CSV file

Scenario: CSV file input.csv contains duplicates
	Given input.csv contains "London,Oslo,Stockholm,Stockholm\n"
	When the sort program is run
	Then output.csv contains "Stockholm,Stockholm,Oslo,London\n"

Scenario: CSV file input.csv is already sorted in descending alphabetical order
	Given input.csv contains "Stockholm,Oslo,London\n"
	When the sort program is run
	Then output.csv contains "Stockholm,Oslo,London\n"

Scenario: CSV file input.csv is sorted in ascending alphabetical order
	Given input.csv contains "London,Oslo,Stockholm\n"
	When the sort program is run
	Then output.csv contains "Stockholm,Oslo,London\n"

Scenario: CSV file input.csv is empty
	Given input.csv contains ""
	When the sort program is run
	Then output.csv contains ""

Scenario: CSV file input.csv contains a newline character only
	Given input.csv contains "\n"
	When the sort program is run
	Then output.csv contains "\n"

Scenario: CSV file input.csv contains one element
	Given input.csv contains "Stockholm\n"
	When the sort program is run
	Then output.csv contains "Stockholm\n"
