class LineItem

	def initialize(dish, quantity)
		@dish     = dish
		@quantity = quantity
	end

	def item_total
		@dish.price * @quantity
	end

end