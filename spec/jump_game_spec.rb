require './lib/jump_game'

RSpec.describe 'can_jump' do
  it 'returns true if the last index can be jumped to' do
    nums = [2,3,1,1,4]
    expect(can_jump(nums)).to eq(true)

  #   nums = [2,0,2,0,4]
  #   expect(can_jump(nums)).to eq(true)
  end

  # it "returns false if the last index can't be jumped to" do
  #   nums = [3,2,1,0,4]
  #   expect(can_jump(nums)).to eq(false)

  #   nums = [1,0,2,0,4]
  #   expect(can_jump(nums)).to eq(false)
  # end
end