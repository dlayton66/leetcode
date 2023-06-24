def can_jump(nums)
  return true if nums.length == 1
  return false if nums.first == 0

  jumps = nums.map.with_index { |num, i| num + i } # array of all the indices we can jump to
  i = 0

  while i < nums.length-1
    new_max_jump = jumps[0..jumps[i]].max
    return false if new_max_jump == i # we can't jump
    i = jumps[0..jumps[i]].max # find new highest index we can jump to
  end

  return true # we got through the whole thing
end

# recursive brute force solution

# def can_jump(nums, i = 0)
#   return true if i >= nums.length-1
  
#   for j in nums[i].downto(1)
#     return true if can_jump(nums, i+j)
#   end

#   return false
# end