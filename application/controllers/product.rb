module Picombo
	module Controllers
		class Product < Picombo::Controllers::Template
			def initialize
				super
			end

			def index
				@template[:body] = Picombo::Stache::Product_Index.render
			end
		end
	end
end