require 'menu'

describe Menu do

  it 'has a list of dishes' do
    menu = Menu.new
    expect(menu.dishes).to be_a_kind_of(Hash)
  end

  it 'has a list of the prices of the dishes' do
    menu = Menu.new
    expect(menu.prices).to match(Fixnum)
  end
end
