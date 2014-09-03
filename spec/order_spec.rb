require 'order'

describe Order do

  it 'is initialized with an item receipt' do
    order = Order.new
    expect(order.items_receipt).to eq []
  end
end
