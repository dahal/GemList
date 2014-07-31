  class CreateTopFiftyGems < ActiveRecord::Migration
    def change
      create_table :top_fifty_gems do |t|
      t.string 	:name
      t.string 	:version
      t.string 	:summary
      t.string 	:url
      t.text 		:description

      t.timestamps
    end
  end
end
