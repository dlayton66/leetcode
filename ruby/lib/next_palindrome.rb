def next_palindrome(num)
  num += 1

  # base case
  if is_palindrome?(num)
    return num
  end

  # recursive case
  next_palindrome(num)
end

def is_palindrome?(num)
  edited_num = num.digits.reverse
  
  until edited_num.length <= 1
    return false if edited_num.shift != edited_num.pop
  end
  return true
end