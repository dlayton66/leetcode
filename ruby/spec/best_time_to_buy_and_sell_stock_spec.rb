require './lib/best_time_to_buy_and_sell_stock'

RSpec.describe 'max_profit' do
  it 'returns the max profit from buying and selling a stock' do
    expect(max_profit([7,1,5,3,6,4])).to eq(5)
    expect(max_profit([7,6,4,3,1])).to eq(0)
    expect(max_profit([2,1,2,0,1])).to eq(1)
    expect(max_profit([1,4,7,5,6,2,5,1,9,7,9,7,0,6,8])).to eq(8)
  end
end