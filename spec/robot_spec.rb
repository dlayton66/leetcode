require './lib/robot'

RSpec.describe 'Robot Problem' do
  describe 'return_to_origin?' do
    it 'tells us if the robot is back at its starting location' do
      expect(return_to_origin?("GRGRGRG")).to be(true)
      expect(return_to_origin?("GRGL")).to be(false)
      expect(return_to_origin?("GGGGGGGGGG")).to be(false)
      expect(return_to_origin?("LRLRLRLRLRLRLRLRLLLRLRLRLR")).to be(true)
    end
  end
end