get '/login' do
  redirect to("/auth/twitter")
end

get '/auth/twitter/callback' do
  env['omniauth.auth'] ? session[:admin] = true : halt(401,'Not Authorized')
  #ap request.env['omniauth.auth']
 	session[:twitter_name] = request.env['omniauth.auth']["info"]["name"]
 	session[:twitter_image] = request.env['omniauth.auth']["info"]["image"]
 	session[:twitter_id] = request.env['omniauth.auth']["uid"]
 	session[:description] = request.env['omniauth.auth']["info"]["description"]
 	session[:username] = request.env['omniauth.auth']["info"]["nickname"]
 	
  redirect"/#{session[:username]}"

end

get '/logout' do
	session[:twitter_id] = nil
	redirect '/'
end

get '/:username' do
	@name = session[:twitter_name]
	@profile_image = session[:twitter_image]
	@description = session[:description]
	@username = session[:username]

	# Top fifty ruby gems
	@gems = TopFiftyGems.first(10)
  erb:'/index'
end

get '/' do
	@gems = TopFiftyGems.first(10)
	#binding.pry
	@name = session[:twitter_name]
	@profile_image = session[:twitter_image]
	@description = session[:description]
	@username = session[:username]
  erb:'/index'
end

get '/gems' do
	erb:'/gems'
end

