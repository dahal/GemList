get '/login' do
  puts "*"*20
  redirect to("/auth/twitter")
end

get '/auth/twitter/callback' do
  env['omniauth.auth'] ? session[:admin] = true : halt(401,'Not Authorized')
  "You are now logged in"
  redirect'/profile'
end

get '/profile' do
  erb:'/user/profile'
end

get '/auth/failure' do
  params[:message]
end
