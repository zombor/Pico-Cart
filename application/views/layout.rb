module Picombo
	module Stache
		class Layout < Mustache
			self.template = File.open(Picombo::Core.find_file('views', 'layout', true, 'mustache').shift).read

			def base
				Picombo::Url.base
			end
		end
	end
end