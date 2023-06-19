require './lib/best_time_to_buy_and_sell_stock_2'

RSpec.describe 'max_profit' do
  it 'returns the max profit allowing for multiple single-day trades' do
    prices = [7,1,5,3,6,4]
    expect(max_profit(prices)).to eq(7)

    prices = [1,2,3,4,5]
    expect(max_profit(prices)).to eq(4)

    prices = [7,6,4,3,1]
    expect(max_profit(prices)).to eq(0)
  end
end