require 'customer'

describe Customer do

	let(:customer) { Customer.new }

  it 'has a default name' do
    expect(customer.name).to eq "Ruth"
  end

  it 'can be set with a name' do
  	customer = Customer.new(:name => "Mihai")
    expect(customer.name).to eq "Mihai"
  end

  it 'has a default mobile phone number' do
    expect(customer.mobile_number).to eq "07403454945"
  end

  it 'can be set with a mobile phone number' do
  	customer = Customer.new(:mobile => "07472574252")
  	expect(customer.mobile_number).to eq "07472574252"
  end

end
