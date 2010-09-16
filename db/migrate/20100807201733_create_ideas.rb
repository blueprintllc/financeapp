class CreateIdeas < ActiveRecord::Migration
  def self.up
    create_table :ideas do |t|
      t.integer :user_id
      t.integer :stock_id
      t.string :title
      t.text :description
      t.string :ptarget

      t.timestamps
    end
  end

  def self.down
    drop_table :ideas
  end
end
