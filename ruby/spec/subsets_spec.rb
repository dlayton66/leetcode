require './lib/subsets'

RSpec.describe 'subsets' do
  describe 'find_subsets' do
    it 'example 1' do
      expected = find_subsets([1, 2, 3, 4])

      expect(expected).to eq(
        [
          [],
          [1],[2],[3],[4],
          [1,2],[1,3],[1,4],[2,3],[2,4],[3,4],
          [1,2,3],[1,2,4],[1,3,4],[2,3,4],
          [1,2,3,4]
        ]
      )
    end

    it 'example 2' do
      expected = find_subsets([54, 77])

      expect(expected).to eq(
        [
          [],
          [54], [77],
          [54, 77]
        ]
      )
    end

    it 'example 3' do
      expected = find_subsets([])

      expect(expected).to eq([[]])
    end
  end

  describe 'find_subsets_by_length' do
    it 'works for length of 2' do
      expected = find_subsets_by_length([1, 2, 3, 4], 2)

      expect(expected).to eq([[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]])
    end

    it 'works for length of 3' do
      expected = find_subsets_by_length([1, 2, 3, 4], 3)

      expect(expected).to eq([[1,2,3],[1,2,4],[1,3,4],[2,3,4]])
    end
  end
end