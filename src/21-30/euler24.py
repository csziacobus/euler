import itertools
digit_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
permutation = itertools.permutations(digit_list)
print ((sorted (permutation))[999999])
