require './lib/rotate_array'

RSpec.describe 'rotate' do
  it 'rotates array to the right by k places' do
    expected = [5,6,7,1,2,3,4]
    expect(expected).to eq(rotate([1,2,3,4,5,6,7], 3))

    expected = [3,99,-1,-100]
    expect(expected).to eq(rotate([-1,-100,3,99], 2))
  end
end