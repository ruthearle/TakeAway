class Menu

	def initialize
		@dishes = []
	end

	attr_reader :dishes

	def add(dish)
		@dishes << dish
	end

  def read
    @dishes.each do | dish |
      dish.line
    end
  end
end        
