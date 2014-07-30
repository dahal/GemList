module GetGems
	class Client
		include HTTParty
		base_uri "https://rubygems.org/api/v1"

		def initialize

		end

		def top_ten
			response = self.class.get('/downloads/all.json', {
				query: {with: 'paramaters'}
				})
			ten = JSON.parse(response.body)["gems"].first(10)
			# parsed.each do |item|
			# 	twenty << item.first
			# end
			ten.map!{|gem| gem.first}
		end
	end
end