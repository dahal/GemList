get '/' do
	gems = GetGems::Client.new
	@top_fifty_gems = gems.top_fifty
	#binding.pry
  erb:'/index'
end

get '/gems' do
	erb:'/gems'
end

get '/css/application.css' do
	sass:style.sass
end