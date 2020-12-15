class PiggyBank
  def initialize
    @coins = 0
  end

  def add_coins(coins)
    @coins += coins
  end

  def balance
    @coins
  end

  def shake
    puts "cling"
  end

end