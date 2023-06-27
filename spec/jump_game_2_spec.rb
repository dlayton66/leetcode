require './lib/jump_game_2'

RSpec.describe 'jump' do
  context 'returns minimum number of jumps to last index' do
    specify 'example 1' do
      nums = [2,3,1,1,4]
      expect(jump(nums)).to eq(2)
    end

    specify 'example 2' do
      nums = [2,3,0,1,4]
      expect(jump(nums)).to eq(2)
    end

    specify 'example 3' do
      nums = [7,0,9,6,9,6,1,7,9,0,1,2,9,0,3]
      expect(jump(nums)).to eq(2)
    end

    specify 'example 4' do
      nums = [1,1,1,1]
      expect(jump(nums)).to eq(3)
    end

    specify 'example 5' do
      nums = [2,1]
      expect(jump(nums)).to eq(1)
    end

    specify 'example 6' do
      nums = [0]
      expect(jump(nums)).to eq(0)
    end
  end
end