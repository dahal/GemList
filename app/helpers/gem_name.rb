helpers do
	def remove_version_number(gem_name)
		name_array = gem_name.split("-")
		name_array.delete_at(-1)
		name_array.join("-")
	end

	def version(gem_name)
		gem_name.split("-").pop
	end

	def gem_link(gem_name_with_version)
		"http://rubygems.org/gems/"+
		"#{remove_version_number(gem_name_with_version)}"
	end
end