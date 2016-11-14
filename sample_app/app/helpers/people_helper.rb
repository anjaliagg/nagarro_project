module PeopleHelper

	def project_title_links(project)
		content_tag :h1 do
			#html= 
			[ project.title,
			  link_to_icon('show', project),
			  link_to_icon('edit', edit_project_path(project)),
			  link_to_icon('destroy', project, {
			  	:confirm => 'Are you sure?',
			  	:method => :delete
			  	})
			].join(' ')
			# Sanitize.fragment(html)
		end
		
	end
end
