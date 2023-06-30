require './lib/millions'

RSpec.describe 'millions of numbers' do
  describe 'intersection' do
    it 'finds the intersection between two arrays' do
      nums_1 = [1, 2, 4, 5, 8]
      nums_2 = [2, 3, 5, 7, 9]
      intersection = find_intersection(nums_1, nums_2)

      expect(intersection).to eq([2, 5])
    end

    it 'example 2' do
      nums_2 = [2, 3, 5, 7, 9]
      nums_3 = [1, 2, 5, 8, 9]
      intersection = find_intersection(nums_2, nums_3)

      expect(intersection).to eq([2, 5, 9])
    end

    it 'example 3' do
      nums_1 = [1, 2, 4, 5, 8, 10, 14, 18, 19]
      nums_2 = [2, 3, 5, 7, 9, 10, 14, 17, 19]
      intersection = find_intersection(nums_1, nums_2)

      expect(intersection).to eq([2, 5, 10, 14, 19])
    end

    it 'example 4' do
      nums_2 = [2, 3, 5, 7, 9, 12, 14, 17, 19]
      nums_3 = [1, 3, 5, 8, 9, 11, 14, 18, 22]
      intersection = find_intersection(nums_2, nums_3)

      expect(intersection).to eq([3, 5, 9, 14])
    end
  end

  describe 'find_matches' do
    it 'returns an array of common matches' do
      nums_1 = [1, 2, 4, 5, 8]
      nums_2 = [2, 3, 5, 7, 9]
      nums_3 = [1, 2, 5, 8, 9]
      matches = find_matches(nums_1, nums_2, nums_3)
  
      expect(matches).to eq([2, 5])
    end
  
    it 'works for this set too' do
      nums_1 = [1, 2, 4, 5, 8, 10, 14, 18, 19]
      nums_2 = [2, 3, 5, 7, 9, 10, 14, 17, 19]
      nums_3 = [1, 3, 5, 8, 9, 11, 14, 18, 22]
      matches = find_matches(nums_1, nums_2, nums_3)
  
      expect(matches).to eq([5, 14])
    end
  
    it 'works for randomly generated lists' do
      nums_1 = [1]
      nums_2 = [2]
      nums_3 = [3]
      for i in 0..999 do
        nums_1 << nums_1[i] + rand(1..5)
        nums_2 << nums_2[i] + rand(1..5)
        nums_3 << nums_3[i] + rand(1..5)
      end
  
      matches = find_matches(nums_1, nums_2, nums_3)
  
      matches.each do |match|
        expect(nums_1).to include(match)
        expect(nums_2).to include(match)
        expect(nums_3).to include(match)
      end
    end
  end
end