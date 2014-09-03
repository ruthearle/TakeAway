require 'line_item'

describe LineItem do

  it 'has a dish' do
    line_item = LineItem.new
    dish = double(:dish)
    expect(line_item.add(dish)).to eq dish
  end

  it 'has a quatity' do
    line_item = LineItem.new
    dish = double(:dish)
    line_item.add(dish)
    expect(line_item.quantity).to eq 1
  end
end
