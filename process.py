#Line 2 is calling in the server or linking it so that it can work together. It is also creating a variable for it so that we can loop over the data when needed.
log_file = open("um-server-01.txt")

#lines 5 - 10 are a function calles sales_reports. This function loops through the information, line by line, from the server we logged earlier. First, it uses line.rstrip() to remove excess whitespace in this case from the data. It then creates a variable 'day' which is creating a shallow array to store the new filtered information. This is followed by the if statement, that filters, if the day is "Tue", then print the information on that line.
def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)

#Line 13 is calling the function and bringing about the actions notated above.
sales_reports(log_file)

#As a final step, I changed the value on line 9 to if day == "Mon" to filter for Monday instead of Tuesday.