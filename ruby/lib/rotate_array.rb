def rotate(nums, k)
  k.times do
    nums.prepend(nums[-1])
    nums.pop
  end
  nums
end