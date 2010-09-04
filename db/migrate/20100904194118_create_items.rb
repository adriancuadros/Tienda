class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :units, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
