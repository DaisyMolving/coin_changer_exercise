require_relative './coin_changer'

describe CoinChanger do
  it 'takes an amount of 0 and returns no coins' do
	 coin_change = CoinChanger.new
	 result = coin_change.give_coins(0)
	 expect(result).to eq []
  end
end
