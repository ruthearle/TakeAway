class Order

	# def initialize
	# 	@items = []
	# end

	def items
		@items ||= []
	end

	def add(item)
		items << item
	end

	def grand_total
		total = add_all_item_totals(map_items_total)
	end

	def map_items_total
		items.map {|li| li.item_total}
	end	

	def add_all_item_totals(totals)
		totals.inject {|sum, n| sum + n}
	end
  
end
