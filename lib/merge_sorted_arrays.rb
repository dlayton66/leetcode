def merge(nums1, m, nums2, n)
  return nums1 if n == 0

  x = m + n

  x.times do
    if m == 0 || (nums2[n-1] > nums1[m-1] && n > 0)
      nums1[x-1] = nums2[n-1]
      n -= 1
    else
      nums1[x-1] = nums1[m-1]
      m -= 1
    end
    x -= 1
  end

  return nums1
end