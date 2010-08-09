module Picombo
	module Controllers
		class Home < Picombo::Controllers::Template
			def initialize
				super
			end

			def index
				@template[:body] = Picombo::Stache::Home_Index.render
			end
		end
	end
end