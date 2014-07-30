module GetGems
	class Client
		include HTTParty
		base_uri "https://rubygems.org/api/v1"

		def initialize
			#@auth = "'Authorization' => 'Bearer #{ENV['TEITTER_ACCESS']}"
		end

		def top_fifty
			response = self.class.get('/downloads/all.json', {
				query: {with: 'paramaters'}
				})
			return JSON.parse(response.body)
		end

	end
end