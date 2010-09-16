class CreateLabelValues < ActiveRecord::Migration
  def self.up
    create_table :label_values do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :label_values
  end
end
