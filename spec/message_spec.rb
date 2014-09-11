require 'message'


describe Message do

  before(:each) do
    
  end

	it 'can be initialised with a customer and an order' do
		customer = double :customer
		order 	 = double :order
		expect {Message.new(customer, order)}.not_to raise_error
	end

	it 'can send a message to the customer about their order' do
		customer = double :customer, name: "Gladys"
		order 	 = double :order, grand_total: 33.6
		expect(Message.new(customer, order).send_message).to eq "Thank you Gladys. The grand total of your order is £33.6 and it will be delivered by #{Time.now.hour + 1}:#{Time.now.min}!"
	end

	it 'can send a message via SMS' do

		customer_3 = double :customer, mobile_number: +447403454945, name: "Ruth"
		order_3    = double :order, grand_total: 10.00
    expect(Twilio::REST::Client).to receive_message_chain(:new, :account, :messages, :create).and_return("ff")
		Message.new(customer_3, order_3).send_sms
	end
end
