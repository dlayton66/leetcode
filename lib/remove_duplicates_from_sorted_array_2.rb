def remove_duplicates(nums)
  current = nil
  k = 0
  consecutive = 1

  nums.each do |num|
    if num != curr
      current = num
      consecutive = 1
    else
      consecutive += 1
      next if consecutive > 2
    end
    nums[k] = num
    k += 1
  end
end