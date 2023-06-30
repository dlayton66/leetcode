def find_subsets(nums)
  nums.combination(4)
  # [1, 2, 3, 4]
  subsets = []
  0.upto(nums.length) { |i| subsets << find_subsets_by_length(nums, i) }
end

def find_subsets_by_length(nums, length, target = [], index = 0)
  #base case
  if index == length-1
    require 'pry'; binding.pry
  end

  #recursive case
  for i in index...nums.size
    target << index
    find_subsets_by_length(nums, length, target, index + 1)
  end
end

def generate_subsets(nums)
  if !arr
    return [[]]
  end

  subset = generate_subsets(nums[1..])
  return subset + [[nums[0]] + s 
end