class Menu

  attr_accessor :main

  def initialize
    @main = {chicken: 3.95, kebab: 3.95, beef: 4.95, prawn: 2.95}
  end

  def dishes
    @main
  end

  def prices
    @prices = @main.select {|k,v| p v}
  end
end
