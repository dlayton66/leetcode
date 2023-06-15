def majority_element(nums)
  hash = Hash.new(0)
  nums.each do |num|
    hash[num] += 1
    return num if hash[num] > nums.size.to_f/2
  end
end