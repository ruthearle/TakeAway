require 'order'

describe Order do

	let(:order) { Order.new }

	it 'has no items upon initialisation' do
		expect(order.items).to eq []
	end
  
  it 'items can be added to an order' do
  	item  = double :line_item
  	order.add(item)
  	expect(order.items).to eq [item]
  end

  it 'can calculate the grand total' do
  	item   = double :line_item, item_total: 10.0
  	item_2 = double :line_item, item_total: 7.8
  	order.add(item)
  	order.add(item_2)
  	# allow(item).to receive(:item_total).and_return 10.00
  	# allow(item_2).to receive(:item_total).and_return 7.80

  	expect(order.grand_total).to eq 17.8
  end

end
