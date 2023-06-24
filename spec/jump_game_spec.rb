require './lib/jump_game'

RSpec.describe 'can_jump' do
  it 'returns true if the last index can be jumped to' do
    nums = [2,3,1,1,4]
    expect(can_jump(nums)).to eq(true)

    nums = [2,0,2,0,4]
    expect(can_jump(nums)).to eq(true)

    nums = [2,0]
    expect(can_jump(nums)).to eq(true)

    nums = [7,0,1,0,2,0,0,3]
    expect(can_jump(nums)).to eq(true)

    nums = [6,0,1,0,3,1,0,3]
    expect(can_jump(nums)).to eq(true)
    
    nums = [6,0,5,0,2,1,0,3]
    expect(can_jump(nums)).to eq(true)

    nums = [6,0,4,0,0,2,0,3]
    expect(can_jump(nums)).to eq(true)

    nums = [2,0,0]
    expect(can_jump(nums)).to eq(true)
    
    nums = [5,9,3,2,1,0,2,3,3,1,0,0]
    expect(can_jump(nums)).to eq(true)
  end

  it "returns false if the last index can't be jumped to" do
    nums = [3,2,1,0,4]
    expect(can_jump(nums)).to eq(false)

    nums = [1,0,2,0,4]
    expect(can_jump(nums)).to eq(false)

    nums = 
      [2,0,6,9,8,4,5,0,8,9,1,2,9,6,8,8,0,6,3,1,2,2,1,2,6,5,
       3,1,2,2,6,4,2,4,3,0,0,0,3,8,2,4,0,1,2,0,1,4,6,5,8,0,
       7,9,3,4,6,6,5,8,9,3,4,3,7,0,4,9,0,9,8,4,3,0,7,7,1,9,
       1,9,4,9,0,1,9,5,7,7,1,5,8,2,8,2,6,8,2,2,7,5,1,7,9,6]
    expect(can_jump(nums)).to eq(false)
  end
end