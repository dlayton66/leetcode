def palindrome_checker
  palindromes = []
  num = 0
  until palindromes.length == 25
    result = num + inverse_num(num)
    if result > 1000 && is_palindrome?(result)
      palindromes << num
    end
    num += 1
  end
  palindromes
end

def inverse_num(num)
  num.digits.join.to_i
end

def is_palindrome?(num)
  num == inverse_num(num)
end