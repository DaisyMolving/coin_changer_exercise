class CoinChanger

  def give_coins(amount)
	 coins = []
	 while amount >= 10
		coins << 10
		amount -= 10
	 end
	 while amount >= 5
		coins << 5
		amount -= 5
	 end
	 while amount >= 1
		coins << 1
		amount -= 1
	 end
	 coins
  end

end
