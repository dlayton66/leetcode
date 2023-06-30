require './lib/merge_sorted_arrays'

RSpec.describe 'merge sorted arrays' do
  describe 'merge' do
    it 'merges two sorted arrays into the first array' do
      expected = merge([1,2,3,0,0,0], 3, [2,5,6], 3)
      expect(expected).to eq([1,2,2,3,5,6])

      expected = merge([1], 1, [], 0)
      expect(expected).to eq([1])

      expected = merge([0], 0, [1], 1)
      expect(expected).to eq([1])
      
      expected = merge([2,0], 1, [1], 1)
      expect(expected).to eq([1,2])

      expected = merge([4,5,6,0,0,0], 3, [1,2,3], 3)
      expect(expected).to eq([1,2,3,4,5,6])
    end
  end
end