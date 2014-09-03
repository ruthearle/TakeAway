class Dish

	def initialize(name: '', price: 0.0)
		@name  = name
		@price = price
	end

	attr_reader :name, :price

  def line
    "#{name}, £#{price}"
  end

end
