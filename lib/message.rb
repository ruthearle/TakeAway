require 'twilio-ruby'

class Message

  ACCOUNT_SID   = ENV['ACCOUNT_SID']
  AUTH_TOKEN    = ENV['AUTH_TOKEN']
  TWILIO_NUMBER = ENV['TWILIO_NUMBER']

  def initialize(customer, order)
    @customer = customer
    @order    = order
  end

	def send_message
	 	"Thank you #{@customer.name}. The grand total of your order is £#{@order.grand_total} and it will be delivered by #{Time.now.hour + 1}:#{Time.now.min}!"
	end

  def send_sms
    @client = Twilio::REST::Client.new(
      ACCOUNT_SID,
      AUTH_TOKEN
    )

    @client.account.messages.create(
      :from => TWILIO_NUMBER,
      :to =>  @customer.mobile_number,
      :body => send_message
    )
  end
end
