class IndexTopFiftyGems < ActiveRecord::Migration
  def change
		add_index :top_fifty_gems, :name
		add_index :top_fifty_gems, :version
		add_index :top_fifty_gems, :summary
		add_index :top_fifty_gems, :url
		add_index :top_fifty_gems, :description	    
  end
end
