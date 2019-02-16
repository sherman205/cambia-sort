import csv

input_file = open("input.csv",'r')
for line in input_file.readlines():
    actual_line = line.rstrip('\n')
    input_list = actual_line.split(',')

input_file.close()

input_list.sort(reverse=True)

# with open('input.csv') as input_file:
#     csv_reader = csv.readlines()
#     print csv_reader
#     print type(csv_reader)
#     my_list = []

#     for item in csv_reader:
#         print item
        # my_list.append(item)

    # print type(my_list)
    # print my_list
    # sorted_output = my_list.sort(reverse=True)


with open("output.csv",'w') as output_file:
    wr = csv.writer(output_file, quoting=csv.QUOTE_NONE)
    wr.writerow(input_list)
