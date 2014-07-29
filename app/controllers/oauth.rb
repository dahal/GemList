# get '/login' do
#   redirect to("/auth/twitter")
# end

# get '/auth/twitter/callback' do
#   env['omniauth.auth'] ? session[:admin] = true : halt(401,'Not Authorized')
#  	session[:twitter_name] = request.env['omniauth.auth']["info"]["name"]
#  	session[:twitter_image] = request.env['omniauth.auth']["info"]["image"]
#  	session[:twitter_id] = request.env['omniauth.auth']["uid"]
#  	session[:description] = request.env['omniauth.auth']["info"]["description"]
 	
#   redirect'/profile'

# end

# get '/profile' do
# 	p '*'*20
# 	@name = session[:twitter_name]
# 	@profile_image = session[:twitter_image]
# 	@description = session[:description]
#   erb:'/user/profile'
# end

# get '/auth/failure' do
#   params[:message]
# end
