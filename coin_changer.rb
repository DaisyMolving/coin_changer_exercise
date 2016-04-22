class CoinChanger

  COIN_VALUES = [200, 100, 50, 20, 10, 5, 2, 1]

  def give_coins(amount)
	 coins = []
	 COIN_VALUES.each do |coin_value|
		while amount >= coin_value
		  coins << coin_value
		  amount -= coin_value
		end
	 end
	 coins
  end

end
