helpers do
	def current_user
		session[:twitter_id]
	end

	def logged_in?
		current_user
	end

end