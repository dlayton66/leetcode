def find_matches(nums_1, nums_2, nums_3)
  # nums_1 & nums_2 & nums_3
  find_intersection(nums_1, find_intersection(nums_2, nums_3))
end

def find_intersection(nums_1, nums_2)
  j = nums_2.size-1
  nums_1.reverse_each do |num|
    while num < nums_2[j] && j >= 0 do
      j-=1
    end
    if num != nums_2[j] # num <= nums_2[j]
      nums_1.delete(num)
    end
  end
  nums_1
end