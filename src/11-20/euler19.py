sunday_count = 0
initial_position = 5 # the first sunday on 1/6/1901 

for year in range (1901, 2001):
    calendar = [[0] * 31, [0] * (28 + ((year % 4) == 0)),
                     [0] * 31, [0] * 30, [0] * 31, [0] * 30,
                     [0] * 31, [0] * 31, [0] * 30, [0] * 31, [0] * 30,
                     [0] * 31]
   
    for month in calendar:
        for day in range (0, len (month)):
            if (day - initial_position) % 7 == 0:
                month[day] = 1
        initial_position -= len (month)
        initial_position %= 7
        if month[0]:
            sunday_count += 1
print (sunday_count)



        
