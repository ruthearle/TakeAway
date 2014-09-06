require 'line_item'

describe LineItem do
	
	it 'is initialised with a dish and quantity' do
		chicken  = double :dish
		# chickens = LineItem.new(chicken, 4)
		# expect(chickens).to be_an_instance_of LineItem
		expect {LineItem.new(chicken, 4)}.not_to raise_error
	end

	it 'calculates the total' do
		chicken  = double :dish, price: 2.50
		chickens = LineItem.new(chicken, 4)
		expect(chickens.item_total).to eq 10.00
	end

	it 'calculates the total' do
		beef = double :dish, price: 3
		beefs = LineItem.new(beef, 3)
		expect(beefs.item_total).to eq 9.00
	end


end
