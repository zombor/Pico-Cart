module Picombo
	module Baseview
		@status_message = nil

		def status_message=(message)
			@status_message = message
		end

		def status_message
			{
				:message => @status_message,
				:type => 'good'
			}
		end
	end
end