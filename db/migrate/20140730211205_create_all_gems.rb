  class CreateAllGems < ActiveRecord::Migration
    def change
      create_table :all_gems do |t|
      t.string :name
      t.string :version

      t.timestamps
    end
  end
end
