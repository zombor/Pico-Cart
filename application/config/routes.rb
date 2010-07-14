Picombo::Router.add('_default', 'product/index')

Picombo::Router.add('admin', lambda{ |path|
	if Regexp.new('admin/(.+)').match(path)
		Picombo::Router.process_uri('admin_'+Regexp.last_match[1])
	end
})