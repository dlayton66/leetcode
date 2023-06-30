require './lib/remove_duplicates_from_sorted_array_2'

RSpec.describe 'remove_duplicates' do
  it 'removes duplicates from array until two duplicates remain' do
    expected = remove_duplicates([1,1,1,2,2,3])
    expect(expected).to start_with(1,1,2,2,3)

    expected = remove_duplicates([0,0,1,1,1,1,2,3,3])
    expect(expected).to start_with(0,0,1,1,2,3,3)
  end
end