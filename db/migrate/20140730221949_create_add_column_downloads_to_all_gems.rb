class CreateAddColumnDownloadsToAllGems < ActiveRecord::Migration
  def change
  	add_column :all_gems, :downloads, :integer
  end
end
