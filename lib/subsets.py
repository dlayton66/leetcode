def find_subsets(array):
  output = [[]]
  for i, number in enumerate(array):
    if [number] not in output:
      output.append([number])
    for second_number in array[(i+1):]:
      if [number, second_number] not in output:
        output.append([number, second_number])
    for index in range(i+1, len(array)):
      x = array[i:index+1]
      y = array[:i] + array[index:len(array)]
      if x not in output:
        output.append(x)
      if y not in output:
        output.append(y)
  return print(sorted(output, key=lambda x: (len(x), x)))

print(find_subsets([1, 2, 3, 4, 5]))

def generate_subsets(arr):
  if not arr:
    return [[]] # return an empty subset if the array is empty

  subset = generate_subsets(arr[1:]) # generate all subsets of the remaining elements
  return subset + [[arr[0]] + s for s in subset] # combine the subsets with the first element and without the first element


def sort_subsets(subsets):
  return print(sorted(subsets, key=lambda x: (len(x), x)))