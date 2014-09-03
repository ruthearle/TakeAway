require 'dish'

describe Dish do

	it 'has a name and a price' do
		dish = Dish.new(name: 'Curry', price: 2.3)
		expect(dish.name).to eq "Curry"
		expect(dish.price).to eq 2.3
	end

  it 'shows the dish and price on one line' do
    dish = Dish.new(name: 'Burger', price: 2.1)
    expect(dish.line).to eq "Burger, £2.1"
  end

end
