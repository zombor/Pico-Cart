Picombo::Router.add('_default', 'product/index')

Picombo::Router.add('admin', lambda{ |path|
	if Regexp.new('admin/(.+)/(.+)').match(path) # todo: make this regex match paramaters
		{:controller => 'admin_'+Regexp.last_match[1], :method => Regexp.last_match[2], :params => []}
	end
})