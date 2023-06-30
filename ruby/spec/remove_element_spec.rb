require './lib/remove_element'

RSpec.describe ElementRemover do
  let(:element_remover) { ElementRemover.new }

  describe '#remove_element' do
    it 'in-place removes occurrences of value from array' do
      element_remover.remove_element([3,2,2,3], 3)

      expect(element_remover.nums).to start_with(2, 2)

      element_remover.remove_element([0,1,2,2,3,0,4,2], 2)

      expect(element_remover.nums).to start_with(0, 1, 3, 0, 4)
    end

    it 'returns the number of remaining elements' do
      expect(element_remover.remove_element([3,2,2,3], 3)).to eq(2)
      expect(element_remover.remove_element([0,1,2,2,3,0,4,2], 2)).to eq(5)
    end
  end
end