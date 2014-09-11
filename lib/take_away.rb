class TakeAway

	def initialize
		@menu = nil
	end

	def has_menu?
		!@menu.nil?
	end

	def add_menu(menu)
		@menu = menu
	end

	def receive_order(customer, order)
		Message.new(customer, order).send_sms
	end
end
