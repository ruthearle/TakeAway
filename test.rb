require 'rubygems'
require 'twilio-ruby'

class Message
  def initialize(customer, order)
    @customer = customer
    @order    = order
  end

  def send_message
    "Thank you #{@customer.name}. The grand total of your order is £#{@order.grand_total} and it will be delivered by #{Time.now.hour + 1}:#{Time.now.min}!"
  end

  def send_sms
    account_sid = 'AACa5532ea1dde6c81a8db5e8f179b79e71'
    auth_token = 'y9ca6d1a3ca36939d784ffcaa1744f83'
    client = Twilio::REST::Client.new account_sid, auth_token
    account = client.account
    account.messages.create({:from => +447403454945, :to => +447403454945, :body => "Hello"})
  end
end

def send_sms
account_sid = "ACa5532ea1dde6c81a8db5e8f179b79e71"
auth_token = "9ca6d1a3ca36939d784ffcaa1744f83c"
client = Twilio::REST::Client.new account_sid, auth_token

client.account.messages.create(
    :from => +441279260140,
    :to => +447403454945,
    :body => "Hey, Monkey party at 6PM. Bring Bananas!"
  ) 
end
