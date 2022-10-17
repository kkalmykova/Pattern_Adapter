class Apple
  def price_in_coins
    80
  end
end

class Banana
  def price_in_coins
    100
  end
end

class Orange
  def price_in_hryvnas
    15
  end
end

class FruitAdapter
COINS_IN_ONE_HRYVNA = 100

def initialize(fruit)
@fruit = fruit
  end

  def price_in_coins
    @fruit.price_in_hryvnas * COINS_IN_ONE_HRYVNA
  end
end

orange = Orange.new
adapted_orange = FruitAdapter.new(orange)
puts(adapted_orange.price_in_coins)


class AdapteeOrange < Orange
  COINS_IN_ONE_HRYVNA = 100

  def price_in_coins
    price_in_hryvnas * COINS_IN_ONE_HRYVNA
  end
end

orange = AdapteeOrange.new
puts(orange.price_in_coins)

