module Picombo
	class Baseview < Mustache
		@status_message = nil

		def status_message=(message)
			@status_message = message
		end
	end
end