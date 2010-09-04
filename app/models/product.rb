class Product < ActiveRecord::Base
  validates_presence_of     :name, :message => 'El nombre no puede estar en blanco'
  validates_presence_of     :price, :message => 'El precio no puede estar en blanco'
  
  validates_numericality_of :price, :message => 'El precio debe ser un numero'
  validates_numericality_of :units, :allow_blank => true, :message => 'El numero de unidades debe ser un numero'
end
