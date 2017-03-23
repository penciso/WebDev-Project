class Product < ApplicationRecord
	def self.search(search)
  where("product_id LIKE ?", "%#{search}%") 

 
  
end
	validates :product_id, :product_name, :product_price, :product_stock,:supplier, :presence => true
	validates :product_id, :numericality => {:only_integer => true}

  
end
