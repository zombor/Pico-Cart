Picombo::Router.add('_default', 'home/index')

Picombo::Router.add('admin', lambda{ |path|
	if Regexp.new('admin/(.+)').match(path)
		Picombo::Router.process_uri('/admin_'+Regexp.last_match[1])
	end
})