# require 'thwait'
# require 'httparty'
# require_relative '../app/helpers/gem_name'


# # Helper methods
# def remove_version_number(gem_name)
# 	name_array = gem_name.split("-")
# 	name_array.delete_at(-1)
# 	name_array.join("-")
# end

# def version(gem_name)
# 	gem_name.split("-").pop
# end

# def gem_link(gem_name_with_version)
# 	"http://rubygems.org/gems/"+
# 	"#{remove_version_number(gem_name_with_version)}"
# end

# puts Benchmark.measure{
# # Top 50 most downloaded gems.
# response = HTTParty.get('https://rubygems.org/api/v1/downloads/all.json')
# top_50_gems = JSON.parse(response.body)["gems"].map!{|gem| gem.first}
# top_50_gems.each do |gem|

# 	gem_name = remove_version_number(gem['full_name'])
# 	gem_version = version(gem['full_name'])
# 	gem_summary = gem['summary']
# 	gem_url = gem_link(gem['full_name'])
# 	gem_description = gem['description']
# 	TopFiftyGems.create(name: gem_name, 
# 						version: gem_version, 
# 						summary: gem_summary,
# 						url: gem_url,
# 						description: gem_description,
# 						)
# end

# }
# Top 50 most recently updated gems.


# All the gems
#ems=Marshal.load File.read("db/latest_specs.4.8");gems.first
# puts Benchmark.measure{
# gems.each do |gem| 
# AllGems.create(name: gem.first, version:gem.second.to_s)
# end}


# puts Benchmark.measure{
# 	@errors = 0
# 	AllGems.find_in_batches(batch_size: 300).each do |batch|
# 		batch.each do |gem|
# 				@threads = []
# 			@threads << Thread.new do
# 				response = HTTParty.get("https://rubygems.org/api/v1/gems/#{gem.name}.json")
# 				response["downloads"]
# 				begin
# 					gem.update(downloads: response["downloads"])
# 					ActiveRecord::Base.connection.close
# 				rescue Exception => e
# 					@errors += 1
# 					p "*"*30
# 					p e
# 					p "*"*30
# 				end
# 			end
# 		end
# 		ThreadsWait.all_waits(@threads) # 8 secs
# 	end
# 	@threads
# p @errors
# }


p "*"*30
#( 27.892294)

# puts Benchmark.measure{
# 	AllGems.all.first(100).each do |gem|
# 			response = HTTParty.get("https://rubygems.org/api/v1/gems/#{gem.name}.json")
# 			p response
# 	end
# }
# #( 27.892294)
