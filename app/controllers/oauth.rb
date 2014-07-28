get '/login' do
  redirect to("/auth/twitter")
end

get '/auth/twitter/callback' do
  env['omniauth.auth'] ? session[:admin] = true : halt(401,'Not Authorized')
  "You are now logged in"
  p params
  redirect'/profile'
end

get '/profile' do
  twitter = request.env['omniauth.auth']
  #twitter_id = twitter['uid']
  erb:'/user/profile'

end

get '/auth/failure' do
  params[:message]
end
