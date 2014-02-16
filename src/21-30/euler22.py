names = open('names.txt')
names_string = names.read()
nameslist = [name.strip('"') for name in names_string.split(',')] 
nameslist.sort()
namesscore = []
namesvalue = []
for i in nameslist:
    namevalue = []
    for j in i:
        namevalue.append(ord(j) - 64)
    namesvalue.append(sum(namevalue))
for i in range(0, len(namesvalue)):
    namesscore.append((i + 1) * namesvalue[i])
print(sum(namesscore))v


