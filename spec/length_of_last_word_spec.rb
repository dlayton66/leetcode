require './lib/length_of_last_word'

RSpec.describe 'length_of_last_word' do
  it 'returns the length of the last word' do
    s = "Hello World"
    expect(length_of_last_word(s)).to eq(5)

    s = "   fly me   to   the moon  "
    expect(length_of_last_word(s)).to eq(4)

    s = "luffy is still joyboy"
    expect(length_of_last_word(s)).to eq(6)
  end
end