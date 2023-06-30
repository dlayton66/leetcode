require './lib/palindrome_checker'

RSpec.describe 'palindrome checking' do
  describe 'palindrome_checker' do
    it 'returns the first 25 numbers where num + inverse(num) equals a palindrome > 1000' do
      palindrome_checker.each do |num|
        result = num + inverse_num(num)
        expect(is_palindrome?(result)).to be(true)
      end
    end
  end

  describe 'inverse_num' do
    it 'returns the inverse num' do
      expect(inverse_num(47)).to eq(74)
      expect(inverse_num(405)).to eq(504)
    end
  end

  describe 'is_palindrome?' do
    it 'tells if the number is a palindrome' do
      expect(is_palindrome?(47)).to be(false)
      expect(is_palindrome?(505)).to be(true)
    end
  end
end