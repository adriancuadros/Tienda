class AddStatusToCart < ActiveRecord::Migration
  def self.up
    change_table :carts do |t|
      t.string :status, :default => 'new'
    end
  end

  def self.down
    change_table :carts do |t|
      t.remove :status
    end
  end
end
