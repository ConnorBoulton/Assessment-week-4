#Opens the file from a local location under the 'open' method and then assigning it to a variable
log_file = open("um-server-01.txt")

# Create a function that will read through the script of log_file
def sales_reports(log_file):
# Creates a for in loop 'line' is a placeholder & 'log_file' is our file we pass in the argument param
    for line in log_file:
# the .rstrip method removes whatever is passed in its parameters         
        line = line.rstrip()
# line is being sliced starting at index 0 and ending at index 3 then assigned to day as a variable        
        day = line[0:3]
# an if statment checking if the day is equal to 'Tue', if it is print the line 
        if day == "Mon":
            print(line)


# calls the function passing in the file imported as the argument
sales_reports(log_file)
