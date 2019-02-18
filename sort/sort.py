import csv

def sort_csv(src, dest):
    input_list = []
    input_file = open(src,'r')
    # keep track of number of lines in input.csv
    count = 0
    for line in input_file.readlines():
        count = count + 1
        if count > 1:
            print("oh no! input.csv should only contain a single line to read")
            input_list.clear()
        else:
            actual_line = line.rstrip('\n')
            input_list = actual_line.split(',')

    input_file.close()

    # Sorting should ignore case
    input_list.sort(key=lambda i: i.upper(), reverse=True)

    with open(dest,'w') as output_file:
        wr = csv.writer(output_file, quoting=csv.QUOTE_NONE)
        # especially takes care of an empty input.csv
        result = [i for i in input_list if i]
        if not result:
            wr.writerow([])
        else:
            wr.writerow(input_list)

if __name__ == "__main__":
    try:
        sort_csv("sort/input.csv","sort/output.csv")
    except Exception as e:
        print("Oops there was an error. Make sure you specify the right path for the input file")
