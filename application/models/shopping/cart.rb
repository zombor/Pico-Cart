module Picombo
	module Models
		class Shopping_Cart
			include Singleton

			def initialize
				@items = Picombo::Session.instance.get('cart', {})
			end

			def items
				items = []

				@items.each do |index, item|
					items << item
				end

				items
			end

			def add_item(product, quantity)
				if @items[product.id].nil?
					@items[product.id] = {
						:quantity => quantity,
						:product => product,
						:total_price => quantity*product.price
					}
				elsif
					@items[product.id][:quantity]+=quantity
					@items[product.id][:total_price]=@items[product.id][:quantity]*product.price
				end

				Picombo::Session.instance.set('cart', @items)
			end

			def total_items
				total = 0

				@items.each do |index, item|
					total+=item[:quantity]
				end

				total
			end

			def total_price
				total = 0

				@items.each do |index, item|
					total+=item[:quantity]*item[:product].price
				end

				total
			end

			def empty!
				@items = {}
				Picombo::Session.instance.set('cart', @items)
			end
		end
	end
end