class ElementRemover
  attr_reader :nums

  def initialize
    @nums = []
  end

  def remove_element(nums, val)
    @nums = nums
    k = 0

    @nums.each do |num|
      if num != val
        nums[k] = num
        k += 1
      end
    end
    
    k
  end
end