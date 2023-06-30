require 'pry'
require 'pry-nav'

def jump(nums)
  return 0 if nums.length == 1
  current_jump = 0
  next_jump = 0
  jumps = 0
  i = 0

  while i < nums.length
    if i + nums[i] > next_jump + nums[next_jump]
      next_jump = i
    end
    if i == nums.length-1
      return jumps+1
    elsif i >= current_jump + nums[current_jump]
      current_jump = next_jump
      i = current_jump
      jumps += 1
    else
      i += 1
    end
  end
end