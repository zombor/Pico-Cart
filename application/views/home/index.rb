module Picombo
	module Stache
		class Home_Index < Mustache
			include Picombo::Baseview
			self.template = File.open(Picombo::Core.find_file('views', 'home/index', true, 'mustache').shift).read
		end
	end
end