require 'menu'

describe Menu do

  let(:menu) { Menu.new }

  it 'has no dishes' do
    expect(menu.dishes).to be_empty
  end

  it 'can add a dish' do
    dish = double(:dish)
    menu.add(dish)
    expect(menu.dishes).to eq [dish]
  end

  it 'can read the dishes' do
    dish_2 = double(:dish)
    menu.add(dish_2)
    
    expect(menu.dishes).to receive(:each).and_yield(dish_2)
    expect(dish_2).to receive(:line)

    menu.read
  end
end
