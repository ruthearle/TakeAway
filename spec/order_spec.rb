require 'order'

describe Order do

	it 'has no items upon initialisation' do
		order = Order.new
		expect(order.items).to eq []
	end
  
end
