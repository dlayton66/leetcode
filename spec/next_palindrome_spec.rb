require './lib/next_palindrome'

RSpec.describe 'next palindrome algorithm' do
  describe 'next_palindrome' do
    it 'returns the next highest palindrome' do
      expect(next_palindrome(0)).to eq(1)
      expect(next_palindrome(10)).to eq(11)
      expect(next_palindrome(99)).to eq(101)
      expect(next_palindrome(554)).to eq(555)
    end
  end

  describe 'is_palindrome?' do
    it 'returns whether or not a num is a palindrome' do
      expect(is_palindrome?(1)).to be(true)
      expect(is_palindrome?(10)).to be(false)
      expect(is_palindrome?(11)).to be(true)
      expect(is_palindrome?(100)).to be(false)
      expect(is_palindrome?(101)).to be(true)
      expect(is_palindrome?(111)).to be(true)
    end
  end
end