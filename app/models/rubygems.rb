module RubyGems
	class Client
		include HTTParty

		def initialize
			@base_uri = ""
			@auth = "'Authorization' => 'Bearer #{ENV['TEITTER_ACCESS']}"
		end

		def method_name
			
		end
	end

end