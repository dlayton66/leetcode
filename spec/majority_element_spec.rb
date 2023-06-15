require './lib/majority_element'

RSpec.describe 'majority_element' do
  it 'returns the number that occurs >size/2 times' do
    expected = majority_element([3,2,3])
    expect(expected).to eq(3)
    
    expected = majority_element([2,2,1,1,1,2,2])
    expect(expected).to eq(2)
  end
end