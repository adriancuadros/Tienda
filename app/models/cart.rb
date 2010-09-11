class Cart < ActiveRecord::Base
  has_many :items
  
  def add_product(product)
    past_item = self.items.where(:product_id => product.id).first
    if past_item.nil?
      self.items.create(:product => product)
    else
      past_item.units += 1
      past_item.save
    end
  end
  
  def total
    total = 0
    self.items.each do |item|
      total += (item.product.price * item.units)
    end
    total
  end
  
end
