require_relative './coin_changer'

describe CoinChanger do

let(:coin_change) { CoinChanger.new }

  it 'takes an amount of 0 and returns no coins' do
	 result = coin_change.give_coins(0)
	 expect(result).to eq []
  end
  
  it 'takes an amount of 1 and returns 1 coin' do
	 result = coin_change.give_coins(1)
	 expect(result).to eq [1]
  end

  it 'takes an amount of 5 and returns a 5 coin' do
	 result = coin_change.give_coins(5)
	 expect(result).to eq [5]
  end
end
