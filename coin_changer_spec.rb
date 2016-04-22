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

  it 'takes an amount of 6 and returns a 5 and a 1 coin' do
	 result = coin_change.give_coins(6)
	 expect(result).to eq [5, 1]
  end

  it 'takes an amount of 11 and returns a 10 and a 1 coin' do
	 result = coin_change.give_coins(11)
	 expect(result).to eq [10, 1]
  end
  it 'takes an amount of 2 and returns a 2 coin' do
	 result = coin_change.give_coins(2)
	 expect(result).to eq [2]
  end
end
