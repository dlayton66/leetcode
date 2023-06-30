require './lib/palindrome_checker'

RSpec.describe 'palindrome checker' do
  describe 'is_palindrome' do
    it 'tells if word is a palindrome' do
      expect(is_palindrome('racecar')).to be(true)
      # expect(is_palindrome('a')).to be(true)
      # expect(is_palindrome('')).to be(true)
      # expect(is_palindrome('library')).to be(false)
      # expect(is_palindrome('dngojkafnghkoasng')).to be(true)
    end
  end
end