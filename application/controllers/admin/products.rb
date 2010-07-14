module Picombo
	module Controllers
		class Admin_products < Picombo::Controllers::Template
			def initialize
				super
			end

			def index()
				@template[:body] = Picombo::Stache::Admin_Product_Index.render
			end
		end
	end
end