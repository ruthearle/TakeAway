require 'take_away'

describe TakeAway do

	let(:takeout) { TakeAway.new }

	it 'has no menu when initialized' do
		expect(takeout).not_to have_menu
	end

	it 'can have a menu' do
		takeout.add_menu(:menu)
		expect(takeout).to have_menu
	end

	it 'can take an order from a customer' do
		burt  = double :customer, name: "Burt", mobile_number: +447403454945
		order = double :order, grand_total: 44.5
		message = "Thank you Burt. The grand total of your order is £44.5 and it will be delivered by #{Time.now.hour + 1}:#{Time.now.min}!"

		allow(Twilio::REST::Client).to receive_message_chain(:new, :account, :messages, :create).and_return(message)

		expect(takeout.receive_order(burt, order)).to eq message
	end
end
