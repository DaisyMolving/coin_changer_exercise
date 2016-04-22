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
  it 'takes an amount of 20 and returns a 20 coin' do
	 result = coin_change.give_coins(20)
	 expect(result).to eq [20]
  end
  it 'takes an amount of 50 and returns a 50 coin' do
	 result = coin_change.give_coins(50)
	 expect(result).to eq [50]
  end
  it 'takes an amount of 100 and returns a 100 coin' do
	 result = coin_change.give_coins(100)
	 expect(result).to eq [100]
  end
  it 'takes an amount of 200 and returns a 200 coin' do
	 result = coin_change.give_coins(200)
	 expect(result).to eq [200]
  end
  it 'takes an amount that uses all coins and returns appropriate array of coin' do
	 result = coin_change.give_coins(388)
	 expect(result).to eq [200, 100, 50, 20, 10, 5, 2, 1]
  end
end
