class IndexAllGems < ActiveRecord::Migration
  def change
    add_index :all_gems, :name
    add_index :all_gems, :version
  end
end
